void main() {
  print(pyramid(0));
}

List<List<int>> pyramid(int n) {
  final pyramid = List<List<int>>.generate(
      n, (index) => List<int>.generate(index + 1, (index) => 1));
  return pyramid;
}
