void main() {
  var arr = [5,8,7,4,6,2,9];
  print(selectSort(arr));
}


List selectSort(List<int> a) {
  for (var i = 0; i < a.length - 1; i++) {
    var mi = i;
    for (var j = i + 1; j < a.length; j++) {
      if (a[j] < a[mi]) mi = j;
    }
    if (i != mi) {
      var t = a[i];
      a[i] = a[mi];
      a[mi] = t;
    }
  }
  return a;
}
