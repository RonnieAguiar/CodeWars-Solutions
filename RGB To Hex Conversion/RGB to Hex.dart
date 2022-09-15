void main(List<String> args) {
  print(rgb(255, 255, 255)); // returns FFFFFF
  print(rgb(255, 255, 300)); // returns FFFFFF
  print(rgb(0, 0, 0)); // returns 000000
  print(rgb(148, 0, 211)); // returns 9400D3
}

String rgb(int r, int g, int b) {
  return [r, g, b]
      .map((e) => e
          .clamp(0, 255)
          .toInt()
          .toRadixString(16)
          .padLeft(2, "0")
          .toUpperCase())
      .join();
}
