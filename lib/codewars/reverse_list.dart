void main(List<String> args) {
  print(reverseList([1,2,3,4]));
}

List<int> reverseList(List<int> list) {
  // your code here
  return list.reversed.toList();
}