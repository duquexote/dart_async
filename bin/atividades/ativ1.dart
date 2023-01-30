void main(List<String> args) async {
  String usuario = "não";
  try {
    talkFunc(usuario);
  } catch (e) {
    print(e);
  } finally {

    if (usuario == 'não') {
      print('O usuário respondeu "$usuario".');
    } else {
      await Future.delayed(Duration(seconds: 9));
      print('---- Conversa encerrada! ----');
    }
  }
}

Future talkFunc(String resposta) async {
  if (resposta == 'não') {
    return Exception();
  }
  print('João: Bom dia, grupo!');
  await Future.delayed(Duration(seconds: 2));
  print('Mariana: Bom dia! Tudo bem?');
  await Future.delayed(Duration(seconds: 2));
  print('João: Suave, e vc?');
  await Future.delayed(Duration(seconds: 2));
  print('Mariana: Certinho.');
  await Future.delayed(Duration(seconds: 1));
  return encerradoFunc().then((value) => print(value));
}

Future<String> encerradoFunc() async {
  return 'Conversa está encerrando...';
}
