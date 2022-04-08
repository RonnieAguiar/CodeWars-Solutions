void main() {
  print(triangularA(2));
  print(triangularA(3));
  print(triangularA(-10));
  print(triangularB(2));
  print(triangularB(3));
  print(triangularB(-10));
}

triangularA(n) {
  int _n = n as int;
  int nth = 0;
  if (_n > 0) {
    while (_n > 0) {
      nth += _n;
      _n--;
    }
  }
  return nth;
}

triangularB(n) => n < 0 ? 0 : (n+1)/2 * n;