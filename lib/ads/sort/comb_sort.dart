
void main() {
  print(combSort([5,8,7,4,6,2,9]));

}


List combSort(List list) {
  int gpVal = list.length;
  double shrink = 1.3;
  bool sortedBool = false;

  while (!sortedBool) {
    gpVal = (gpVal / shrink).floor();
    if (gpVal > 1) {
      sortedBool = false;
    } else {
      gpVal = 1;
      sortedBool = true;
    }

    int i = 0;
    while (i + gpVal < list.length) {
      if (list[i] > list[i + gpVal]) {
        swap(list, i, gpVal);
        sortedBool = false;
      }
      i++;
    }
  }
  return list;
}

// function to swap the values
void swap(List list, int i, int gpVal) {
  int temp = list[i];
  list[i] = list[i + gpVal];
  list[i + gpVal] = temp;
}