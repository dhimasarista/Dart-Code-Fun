import "dart:math";

void main() {
  int value;
  int counter = 0;
  while (true) {
    value = Random().nextInt(99999999);
    counter += 1;
    print("$value");
    if (value == 22222222) {
      print("Loopings Time: $counter");
      break;
    }
  }
}
