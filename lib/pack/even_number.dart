void main(List<String> args) {
  print(getEvenNumbers());
}

//fungsi mengembalikan list, jadi tipe data fungsinya adalah list
Iterable<int>? getEvenNumbers() {
  var evenNumbers = <int>[];
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    }
  }
  return evenNumbers;
}
