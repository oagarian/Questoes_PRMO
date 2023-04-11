import 'dart:io';

void main() {
  print("Informe o primeiro número");
  String valor1_string = stdin.readLineSync()!;
  int valor1_int = int.parse(valor1_string);
  print("Informe o segundo número");
  String valor2_string = stdin.readLineSync()!;
  int valor2_int = int.parse(valor1_string);
  print("Informe a operação: \n 1 - Calcular área \n 2 - Calcular perímetro ");
  String op = stdin.readLineSync()!;
  int op_int = int.parse(valor1_string);

  switch(op_int) {
    case 1:
      area(valor1_int, valor2_int);
      break;
    case 2:
      perimetro(valor1_int, valor2_int);
      break;
    default:
      print("Opção inválida!");
      break;
  }
}

int area(int valor_um, int valor_dois) {
  return valor_um * valor_dois;
}

int perimetro(int valor_um, int valor_dois) {
  return 2*valor_um + 2*valor_dois;
}
