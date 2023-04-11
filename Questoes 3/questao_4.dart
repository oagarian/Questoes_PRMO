/*Escreva um programa para gerenciar o IMC de diferentes pessoas.
Para realizar o cadastro, o programa deve conter o peso, a altura e o nome de cada
pessoa. No método main, crie uma lista com 03 pessoas e forneça as seguintes
opções:
1. Mostrar as pessoas que estão abaixo do peso (IMC < 18,5)
2. Mostrar as pessoas que estão dentro do peso ideal (IMC > 18,5 e IMC < 25)
3. Mostrar as pessoas que estão acima do peso (IMC > = 25)
Obs.: imc =
peso
altura ∗ altura
*/
import 'dart:collection';
import 'dart:io';
void main() {
  List<Pessoa> pessoas = [];
  print("Informe quantos livros deseja adicionar");
  int quantidade_livros = int.parse(stdin.readLineSync()!);
  for(int i = 0; i < quantidade_livros; i++) {
    print("Informe:");
    print("Nome:");
    String nome = stdin.readLineSync()!;
    print("Peso:");
    double peso = double.parse(stdin.readLineSync()!);
    print("Altura:");
    double altura = double.parse(stdin.readLineSync()!);
    print("Idade:");
    int idade = int.parse(stdin.readLineSync()!);
    Pessoa pessoa = new Pessoa(nome, peso, altura, idade);
    pessoas.add(pessoa);
  }

  print("Opções:");
  print("1. Mostrar as pessoas que estão abaixo do peso (IMC < 18,5) \n2. Mostrar as pessoas que estão dentro do peso ideal (IMC > 18,5 e IMC < 25) \n3. Mostrar as pessoas que estão acima do peso (IMC > = 25)");
  int opcao = int.parse(stdin.readLineSync()!);
  switch(opcao) {
    case 1:
      for(Pessoa pessoa1 in pessoas) {
        if(pessoa1.calculaImc() < 18.5) {
          print(pessoa1.nome);
        }
      }
      break;
    case 2:
      for(Pessoa pessoa1 in pessoas) {
        if(pessoa1.calculaImc() > 18.5 && pessoa1.calculaImc() < 25) {
          print(pessoa1.nome);
        }
      }
      break;
    case 3:
      for(Pessoa pessoa1 in pessoas) {
        if(pessoa1.calculaImc() > 25) {
          print(pessoa1.nome);
        }
      }
      break;
    default:break;
  }
}

class Pessoa {
  String nome;
  double peso;
  double altura;
  int idade;
  
  Pessoa(this.nome, this.peso, this.altura, this.idade);
  double calculaImc() {
    return this.peso/(this.altura*this.idade);
  }

}