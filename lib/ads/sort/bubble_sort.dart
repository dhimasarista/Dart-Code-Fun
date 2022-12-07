// bubble sort, pengurutan dengan cara membandingkan masing-masing item dalam satu list

void main() {
	print(bubbleSort([5,8,7,4,6,2,9]));
}


List<int> bubbleSort(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    bool swapped = false;
    for (var j = 0; j < arr.length - 1; j++) {
      // check value a and b
      if (arr[j] > arr[j + 1]) {
        // Swap if a greater than b
        var temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;

        swapped = true;
      }
    }
    // if swapped is true, stop swap proccess
    if (!swapped) {
      break;
    }
  }

  return arr;
}
