void main() {
  print(spinWords('novo teste'));
}

String spinWords(String str) {
  List<String> _str=[];
  for(String word in str.split(' ')){
    _str.add(word.split('').reversed.join());
  }
  return _str.join(' ');
}
