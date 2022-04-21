void main() {
  print(find([99, 77, 331, 717, 89, 22073, 8, 7, 101]));
  print(find([2254, 29, 98427000020]));
}

int find(List integers) {
  List<int> isPair = [];
  List<int> isOdd = [];
  integers.forEach((element) => element.isEven ? isPair.add(element) : isOdd.add(element));
  return isPair.length == 1 ? isPair[0] : isOdd[0];
}
