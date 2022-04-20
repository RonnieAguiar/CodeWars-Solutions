void main() {
  print(overTheRoadA(3, 3));
  print(overTheRoadA(1, 3));
  print(overTheRoadA(2, 3));
  print(overTheRoadA(3, 5));
  print(overTheRoadA(7, 11));
}

int overTheRoad(int address, int n) {
  return address % 2 == 0 ? n * 2 - address + 1 : n * 2 - (address - 1);
}

int overTheRoadA(int address, int n) => n * 2 + 1 - address;
