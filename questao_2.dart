import 'dart:io';

void main() {
  print("Informe o primeiro número");
  String valor1_string = stdin.readLineSync()!;
  int valor1_int = int.parse(valor1_string);
  print("Informe o segundo número");
  String valor2_string = stdin.readLineSync()!;
  int valor2_int = int.parse(valor1_string);
  print("Informe a operação: \n 1 - Soma \n 2 - Subtração \n 3 - Multiplicação \n 4 - Divisão");
  String op = stdin.readLineSync()!;
  int op_int = int.parse(valor1_string);

  switch(op_int) {
    case 1:
      soma(valor1_int, valor2_int);
      break;
    case 2:
      subtracao(valor1_int, valor2_int);
      break;
    case 3:
      multiplicacao(valor1_int, valor2_int);
      break;
    case 4:
      divisao(valor1_int, valor2_int);
      break;
    default:
      print("Opção inválida!");
      break;
  }
}

int soma(int valor_um, int valor_dois) {
  return valor_um + valor_dois;
}
int subtracao(int valor_um, int valor_dois) {
  return valor_um - valor_dois;
}
int multiplicacao(int valor_um, int valor_dois) {
  return valor_um * valor_dois;
}
double divisao(int valor_um, int valor_dois) {
  return valor_um / valor_dois;
}

