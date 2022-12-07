void main() {

  var arr = [5,8,7,4,6,2,9];
  print(gnomeSort(arr, arr.length));
}



List gnomeSort(List arr, var n) {
  if (arr == null || n == 0);
  int first = 1;
  int second = 2;

  while (first < n) {
    if (arr[first - 1] <= arr[first]) {
      first = second;
      second++;
    } else {
      int temp = arr[first - 1];
      arr[first - 1] = arr[first];
      arr[first] = temp;
      first -= 1;
      if (first == 0) {
        first = 1;
        second = 2;
      }
    }
  }
  return arr;
}