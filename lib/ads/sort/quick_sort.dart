void main() {
  print(quickSort([5,8,7,4,6,2,9]));
}


List<int> quickSort(List<int> a) {
  if (a.length < 2) {
    return a;
  } else {
    var pivot = a[0];
    var less = <int>[];
    var greater = <int>[];
    a.removeAt(0);
    for (var i in a) {
      if (i <= pivot) {
        less.add(i);
      } else {
        greater.add(i);
      }
    }
    return quickSort(less) + [pivot] + quickSort(greater);
  }
}