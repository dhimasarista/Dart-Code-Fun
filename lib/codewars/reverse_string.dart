void main(List<String> args) {
 print(solution("world"));
}

String solution(String str) {
  return str.split("").reversed.join();
}

String reverseString2(String str) {
  String reversed = "";
  for (int i = str.length - 1; i >= 0; i--){
    reversed += str[i];
  }
  return reversed;
}
