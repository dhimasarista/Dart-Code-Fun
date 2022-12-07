void orderWithThen() async {
  // Option 1 Then-Catch
  getOrder().then((value) {
    print("Your Ordered: $value !Then-Catch");
  }).catchError((error) {
    print("Sorry, $error");
  });
  print("Getting Your Order... !Then-Catch");

  // Option 2 with Async-Await
  print("Getting Your Order... !Async-Await");
  var order = await getOrder();
  print("Your Ordered: $order !Async-Await");
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return "Es Teh";
  });
}
