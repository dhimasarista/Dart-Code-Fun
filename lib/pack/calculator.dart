import 'dart:io';

void main() {
  stdout.write("Select The Operator | + | - | * | / | : ");
  String operator = stdin.readLineSync()!;
  stdout.write("Input 1st Value: ");
  num firstValue = num.parse(stdin.readLineSync()!);
  stdout.write("Input 2nd Value: ");
  num secondValue = num.parse(stdin.readLineSync()!);

  switch (operator) {
    case "+":
      print(
          "Result ${firstValue} + ${secondValue}:  ${firstValue + secondValue}");
      break;
    case "-":
      print(
          "Result ${firstValue} - ${secondValue}:  ${firstValue - secondValue}");
      break;
    case "*":
      print(
          "Result ${firstValue} * ${secondValue}:  ${firstValue * secondValue}");
      break;
    case "/":
      print(
          "Result ${firstValue} / ${secondValue}:  ${firstValue / secondValue}");
      break;
    default:
      print("Error! Try again...");
  }
}
