import 'dart:io';

void main() {
  print("Informe o número de espaços no vetor");
  String valor_string = stdin.readLineSync()!;
  int int_vetor = int.parse(valor_string);
  List valores = [];

  for(int i = 0; i < int_vetor; i++ ) {
    print("Informe o número");
    String valor_string = stdin.readLineSync()!;
    int valor_int = int.parse(valor_string);
    valores.add(valor_int);
  }

  print("Calculando média...");
  print(calcularValores(int_vetor, valores));




}

double calcularValores(int quantidade, List vetor) {
  double soma = 0;
  for(double valor in vetor) {
    soma += valor;
  }

  return soma/quantidade;
}



