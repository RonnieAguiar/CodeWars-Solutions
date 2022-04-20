void main() {
  print(spinWords('Hey fellow warriors'));
  print(spinWords('This is another test'));
}

String spinWords(String str) => str
    .split(' ')
    .map((word) => word.length > 4 ? word.split('').reversed.join() : word)
    .join(' ');

String spinWordsA(String str) {
  List<String> _str = [];
  for (String word in str.split(' '))
    word.length > 4 ? _str.add(word.split('').reversed.join()) : _str.add(word);
  return _str.join(' ');
}
