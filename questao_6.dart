import 'dart:io';

void main() {
  print("Informe os graus");
  String valor1_string = stdin.readLineSync()!;
  double valor = double.parse(valor1_string);
  print("Informe a conversão: \n 1 - Farenheit para Celsius \n 2 - Kelven para Celsius ");
  String op = stdin.readLineSync()!;
  int op_int = int.parse(valor1_string);

  switch(op_int) {
    case 1:
      farenheit(valor);
      break;
    case 2:
      kelven(valor);
      break;
    default:
      print("Opção inválida!");
      break;
  }
}

double farenheit(double F) {
  return 5*(F-32)/9;
}

double kelven(double K) {
  return K-273;
}
