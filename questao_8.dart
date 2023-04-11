import 'dart:io';

void main() {
  List idades = [];
  List nomes = [];

  for(int i = 0; i < 10; i++ ) {
    print("Informe o nome");
    String nome_string = stdin.readLineSync()!;
    nomes.add(nome_string);

    print("Informe a idade");
    String valor_string = stdin.readLineSync()!;
    int valor_int = int.parse(valor_string);
    idades.add(valor_int);
  }

  print("Informe a opção: \n 1 - Retornar o nome da pessoa mais velha \n 2 - Retornar o nome da pessoa mais nova \n 3 - Quantidade de pessaos com mais de 18 anos ");
  String op = stdin.readLineSync()!;
  int op_int = int.parse(op);

  switch(op_int) {
    case 1:
      mais_velha(nomes, idades);
      break;
    case 2:
      mais_nova(nomes, idades);
      break;
    case 3:
      mais_18(idades);
      break;
    default:
      print("Erro!");
      break;
  }



}

void mais_velha(List nomes, List idades) {
  int idade = 0;
  String nome = "";

  for (int index_value in idades) {
    int i =0;
    i++;
    if(index_value > idade) {
      nome = nomes[i];
      idade += index_value;
    }
  }
  print("Pessoa mais velha: \n ");
  print(nome);
  print("\n E sua idade é: ");
  print(idade);

}

void mais_nova(List nomes, List idades) {
  int idade = 9999999999;
  String nome = "";

  for (int index_value in idades) {
    int i =0;
    i++;
    if(index_value < idade) {
      nome = nomes[i];
      idade += index_value;
    }
  }
  print("Pessoa mais jovem: \n ");
  print(nome);
  print("\n E sua idade é: ");
  print(idade);

}

void mais_18(List idades) {
  int contador = 0;

  for (int index_value in idades) {

    if(index_value >= 18) {
      contador++;
    }
  }
  print("Pessoas maiores de idade: \n ");
  print(contador);

}



