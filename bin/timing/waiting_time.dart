class BotClock {

   Stream duqueBotStream(int interval, [int? maxCount]) async* {
    int i = 1;

    while (i != maxCount) {
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('A Stream terminou.');
  }
  
  Future clock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }
}
