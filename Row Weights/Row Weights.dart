void main(){
  print(rowWeights([50, 60, 70, 80]));
  print(rowWeights([80]));
  print(rowWeights([100, 50]));
  print(rowWeights([100, 51, 50, 100]));
}

List<int> rowWeights(List<int> arr) {
  List<int> result = [0,0];
  for(int i = 0; i < arr.length; i++)
    i%2 == 0 ? result[0] += arr[i] : result[1] += arr[i];
  return result;
}