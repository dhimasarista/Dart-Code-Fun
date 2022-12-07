void main() {
  print(noSpace("8 j 8   mBliB8g  imjB8B8  jl  B"));
}

String noSpace(String x) {
  for (var i = 0; i < x.length; i++) {
    x.split(" ");
  }
  return x.toString();
}
