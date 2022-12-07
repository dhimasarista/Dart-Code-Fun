void main(List<String> args) {
  print(findSmallestInt1([324,578,-12,647,34346,12,95,-500]));
  print(findSmallestInt2([324,578,-12,647,34346,12,95,-500]));
  print(findSmallestInt3([324,578,-12,647,34346,12,95,-500]));
}


// first way
int findSmallestInt1(List<int> arr) {
  arr.sort();
  return arr[0];
}

// Second
int findSmallestInt2(List<int> arr) {
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

  return arr[0];
}

int findSmallestInt3(List<int> arr) {
  int small = arr[0];
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] < small) {
      small = arr[i];
    }
  }
  return small;
}

