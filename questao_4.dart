import 'dart:io';

void main() {
  print("Informe o salário");
  String valor_string = stdin.readLineSync()!;
  double salario_double = double.parse(valor_string);
  print("Imposto: ");
  print(calcularImposto(salario_double));
}

double calcularImposto(double salario) {
  double imposto = 0;
  if(salario <= 2000) {
    imposto = 0;
  }

  if(salario > 2000 && salario <= 3500) {
    imposto = 0.15*salario;
  }

  if(salario > 3500 && salario <= 5000) {
    imposto = 0.22*salario;
  }

  if(salario > 5000) {
    imposto = 0.30*salario;
  }

  return imposto;
}

