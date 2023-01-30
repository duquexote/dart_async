import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/jokenpo.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String duqueBot = 'DuqueBOT:\n';
  var a = true;
  String usuario = '';

  /* var myStream = BotClock().duqueBotStream(1, 10);
  var subscriber = myStream.listen((event) {
    print(
        '                                     DuqueBot está ativo à $event segundos');
  }, onDone: (() {
    print('DuqueBot está finalizando o trabalho, faça a última pergunta!');
    a = false;
  })); */

  print('-- Iniciando o DuqueBOT, aguarde..--');
  await BotClock().clock(2);

  print('DuqueBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(duqueBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(2);
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(usuario).isThisManners()) {
      GoodManners(usuario).goodManners();
    } else if (Jokenpo(usuario).isThisJokenpo()) {
      Jokenpo(usuario).playJokenpo();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(duqueBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(duqueBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando DuqueBOT--');
}
