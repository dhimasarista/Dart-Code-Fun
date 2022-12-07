import "dart:math" show pow;

void main() {
  String binary = "1010";
  num decimal = 10;
  print("Binary: $binary Decimal :${binaryToDecimal(binary)}");
  print("Decimal: $decimal Binary: ${decimalToBinary(decimal)}");
}


num binaryToDecimal(String binaryString) {
  binaryString = binaryString.trim();
  if (binaryString == null || binaryString == "") {
    throw Exception("An empty value was passed to the function");
  }
  bool isNegative = binaryString[0] == "-";
  if (isNegative) binaryString = binaryString.substring(1);
  num decimalValue = 0;
  for (int i = 0; i < binaryString.length; i++) {
    if ("01".contains(binaryString[i]) == false) {
      throw Exception("Non-binary value was passed to the function");
    } else {
      decimalValue += pow(2, binaryString.length - i - 1) * num.parse((binaryString[i]));
    }
  }
  return isNegative ? -1 * decimalValue : decimalValue;
}


num decimalToBinary(var n) {
  int b = 0, c = 0, d;
  while (n != 0) {
    d = (n & 1);
    b += d * (pow(10, c++).toInt());
    n >>= 1;
  }
  return b;
}