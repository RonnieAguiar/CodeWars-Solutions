void main(List<String> args) {
  // print(nbYear(1500, 5, 100, 5000));
  // print(nbYear(1500000, 2.5, 10000, 2000000));
  // print(nbYear(1500000, 0.25, 1000, 2000000));
  // print(nbYear(1500000, 0.25, -1000, 2000000));
  // print(nbYear(1500000, 0.25, 1, 2000000));
  print(nbYear(1500000, 0.0, 10000, 2000000));
  print(nbYear(1000, 2.0, 50, 1214));
}

int nbYear(int p0, double percent, int aug, int p) {
  int year = 0;
  int population = p0;
  while (population < p){
    population = (population * (1 + percent / 100) + aug).toInt();
    year++;
  }
  return year;
}
