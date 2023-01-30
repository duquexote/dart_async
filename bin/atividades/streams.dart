import 'dart:async';

void main(List<String> args) async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;

    while (i != maxCount) {
      print('Counting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('Stream is finished');
  }

  var duqueStream = myStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = duqueStream.listen((event) {
    if (event.isEven) {
      print('This number is even!');
    }
  }, onError: (e) {
    print('An error happend');
  }, onDone: () {
    print('The subscriber is done.');
  });
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream resumed');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream canceled');

  duqueStream.map((event) => 'Subscriber 2 watching: $event').listen(print);

  print('Mains is done!');
}
