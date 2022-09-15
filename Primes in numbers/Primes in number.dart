void main() {
  print(primeFactors(7775460));
  print(primeFactors(3548569));
}

String primeFactors(int n) {
  String result = '';
  List<int> primes = [2];
  int count = 0;
  while (n > 1) {
    while (n % primes.last == 0) {
      n ~/= primes.last;
      count++;
    }
    count > 1
        ? result += '(${primes.last}**$count)'
        : count == 1
            ? result += '(${primes.last})'
            : null;
    count = 0;
    primos(primes);
  }
  return result;
}

int nextPrime(List<int> oldPrime) {
  int nextPrime = oldPrime.last.isOdd ? oldPrime.last + 2 : oldPrime.last + 1;
  bool _dividers = false;
  while (true) {
    for (int prime in oldPrime) {
      if (nextPrime % prime == 0) {
        _dividers = !_dividers;
        break;
      }
    }
    if (_dividers) {
      nextPrime += 2;
      _dividers = !_dividers;
    } else
      break;
  }
  return nextPrime;
}

void primos(List<int> primos) {
  List<int> BasePrimos = [2, 3, 5, 7];
  if (primos.length < 4) {
    primos.add(BasePrimos[primos.length]);
  } else {
    int nextTestPrime = primos.last + 2;
    while (true) {
      List<int> checkPrimo = BasePrimos.map((e) => nextTestPrime % e).toList();
      if (!checkPrimo.contains(0)) {
        primos.add(nextTestPrime);
        break;
      } else {
        nextTestPrime += 2;
      }
    }
  }
}
