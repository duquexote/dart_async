void main() {
  Future exterminador = Future(() async {
    print('Venha comigo se quiser viver');
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      print('$i');
    }
    return 'Hasta la vista, baby';
  }).then((value) => print(value));
}