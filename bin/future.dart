void main(List<String> args) {
  /* Future myFuture = Future(() {
    print('Going back to the future');
    return 21;
  }).then((value) => print('The value is $value')); */

  Future.delayed(Duration(seconds: 2));

  Future<int> myFutureFunc() async {
    print('I have a function in the future');
    await Future.delayed(Duration(seconds: 2));
    throw Exception();
    return 12;
  }

  /* myFutureFunc()
      .then((value) => print('My function value is $value'))
      .onError((error, stackTrace) => print('An error occurred'))
      .whenComplete(() => print('The future is over')); */

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print("I have a function functional");
      await Future.delayed(Duration(seconds: 2));
      return 42;
    } catch (e) {
      print('An error occurred $e');
      return 42;
    } finally {
      print('The future is finally over');
    }
  }

  myFutureErrorFunc(2, 4).then((value) => print('The value is $value'));

  print('Done with main');
}
