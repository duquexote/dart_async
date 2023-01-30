class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String duqueBot = 'DuqueBOT:\n';

  GoodManners(this.question);

  bool isThisManners() {
    question = question.toLowerCase();
    if (question.contains('oi') ||
        question.contains('ola') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('de nada')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    question = question.toLowerCase();
    if (question.contains('bom dia')) {
      print(duqueBot + 'Bom dia flor do dia!');
    } else if (question.contains('boa tarde')) {
      print(duqueBot + 'Opa, boa tarde!');
    } else if (question.contains('boa noite')) {
      print(duqueBot + 'E ai, buenas noitches');
    } else if (question.contains('ola')) {
      print(duqueBot + 'Ola prazer!');
    }
  }
}
