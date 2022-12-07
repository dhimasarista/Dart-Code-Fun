void main(List<String> args) {
  print(countBy(2, 5));
}

// Return the results as an array or list ( depending on language ).
// countBy(1,10) === [1,2,3,4,5,6,7,8,9,10]
// countBy(2,5) === [2,4,6,8,10]

List<int> countBy(int x, int n) {
  List<int> number = [];
  for (int i = 0; i < n; i++) {
    int element = (i + 1) * x;
    number.insert(i, element);
  }
  return number;
}
