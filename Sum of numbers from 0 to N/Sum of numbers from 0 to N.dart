void main() {
  print(SequenceSum.showSequence(6));
  print(SequenceSumB.showSequence(6));
}

class SequenceSum {
  static String showSequence(int n) {
    if (n == 0)
      return '0=0';
    else if (n < 0)
      return '$n<0';
    else {
      String result = '';
      int x = 0;
      while (x < n) {
        result += '$x+';
        x++;
      }
      result += '$n = ${(((1 + n) * n) / 2).toStringAsFixed(0)}';
      return result;
    }
  }
}

class SequenceSumB {
  static String showSequence(int n) {
    if (n == 0) return '0=0';
    if (n < 0) return '$n<0';
    List<int> listInt = List.generate(n+1, (i) => i);
    return '${listInt.join('+')} = ${listInt.reduce((prev, next) => prev+next,)}';
  }
}
