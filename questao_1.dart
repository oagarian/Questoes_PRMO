import 'dart:io';

void main() {
  print("Informe o número");
  String valor_string = stdin.readLineSync()!;
  int valor_int = int.parse(valor_string);
  if(teste(valor_int)) {
    print("O número é par");
  } else {
    print("O número é ímpar");
  }
}

bool teste(int i){
  if (i%2 == 0) {
      return true;
  } else {
    return false;
  }
}

