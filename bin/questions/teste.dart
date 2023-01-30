import 'dart:math';

void main(List<String> args) {
  int intValue;
  do {
    intValue = Random().nextInt(4);
    print(intValue);
  } while (intValue == 0);
  print('Programa fechado pelo valor $intValue');
}
