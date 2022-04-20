import "dart:core";
import "dart:math";

void main(){
  print(evaporator(10, 10, 10));
  print(evaporator(10, 10, 5));
  print(evaporator(100, 5, 5));
}

int evaporator(double content, double evap_per_day, double threshold){
  int days = 0;
  while (100*pow(1-evap_per_day/100, days) > threshold)
    days++;
  return days;
}