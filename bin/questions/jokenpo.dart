import 'dart:math';

class Jokenpo {
  String question;
  String duqueBot = 'DuqueBOT:\n';
  bool isJokenpo = false;

  Jokenpo(this.question);

  bool isThisJokenpo() {
    question.toLowerCase();
    if (question.contains('jokenpo')) {
      isJokenpo = true;
    } else if (question.contains('pedra')) {
      isJokenpo = true;
    } else if (question.contains('papel')) {
      isJokenpo = true;
    } else if (question.contains('tesoura')) {
      isJokenpo = true;
    }
    return isJokenpo;
  }

  playJokenpo() {
    question = question.toLowerCase();
    int choiceUser = 0;

    int choiceBot = Random().nextInt(4);
    int vitoriaBot = 0;
    int vitoriaUser = 0;
      choiceUser = userMove(question);
      do {
        choiceBot = Random().nextInt(4);
      } while (choiceBot == 0);

      // Pedra = 1 ; Papel = 2 ; Tesoura = 3
      // If com vitoria do User
      if (choiceUser == 3 && choiceBot == 2 && choiceUser > choiceBot) {
        print(duqueBot + 'Você ganhou essa rodada!     PLACAR:  $vitoriaUser X $vitoriaBot');
        vitoriaUser++;
      } else if (choiceUser == 1 && choiceBot == 3 && choiceUser < choiceBot) {
        print(duqueBot + 'Você ganhou essa rodada!     PLACAR:  $vitoriaUser X $vitoriaBot');
        vitoriaUser++;
      } else if (choiceUser == 2 && choiceBot == 1 && choiceUser > choiceBot) {
        print(duqueBot + 'Você ganhou essa rodada!     PLACAR:  $vitoriaUser X $vitoriaBot');
        vitoriaUser++;
      }

      // If com vitoria do Bot
      if (choiceBot == 3 && choiceUser == 2 && choiceBot > choiceUser) {
        print(duqueBot + 'Escolhi: Tesoura.\nEu ganhei essa rodada!     PLACAR:  $vitoriaUser X $vitoriaBot');
        vitoriaBot++;
      } else if (choiceBot == 1 && choiceUser == 3 && choiceBot < choiceUser) {
        print(duqueBot + 'Escolhi: Pedra.\nEu ganhei essa rodada!     PLACAR:  $vitoriaUser X $vitoriaBot');
        vitoriaBot++;
      } else if (choiceBot == 2 && choiceUser == 1 && choiceBot > choiceUser) {
        print(duqueBot + 'Escolhi: Papel.\nEu ganhei essa rodada!     PLACAR:  $vitoriaUser X $vitoriaBot');
        vitoriaBot++;
      }

    if (vitoriaUser == 2) {
      print(
          'Você ganhou de mim! Parabéns!!   Placar: $vitoriaUser X $vitoriaBot');
    } else if (vitoriaBot == 2) {
      print(
          'Consegui ganhar de você! Tenta na próxima...   Placar: $vitoriaUser X $vitoriaBot');
    }
  }

  String makeMove(int choiceBot) {
    String choice = '';
    if (choiceBot == 1) {
      choice == 'Pedra';
    } else if (choiceBot == 2) {
      choice == 'Papel';
    } else if (choiceBot == 3) {
      choice == 'Tesoura';
    }
    return choice;
  }

  int userMove(String question) {
    int user = 0;
    if (question.contains('pedra')) {
      user = 1;
    } else if (question.contains('papel')) {
      user = 2;
    } else if (question.contains('tesoura')) {
      user = 3;
    }
    return user;
  }
}


/* Vou falar com o bot "Vamos jogar jokenpo?"
Ele responde, vamos sim e jogar com um sistema md3
Então ele fala, pode começar
o bot lê a escolha do usuario e compara e informa o vencedor da rodada e o placar

Implementação:
Objeto random de 1 2 3
1 = Pedra, 2 = Papel, 3 = Tesoura

metodo que compara:
Se contem a palavra pedra choiceUser = 1 e etc...

do {
      intValue = Random().nextInt(4);
      print(intValue);
    } while (intValue == 0);

 */