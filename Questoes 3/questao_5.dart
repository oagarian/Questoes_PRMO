/*Crie uma classe estudante. Esta classe deve ter nome, número de
matrícula, endereço, e 04 notas. Forneça um construtor e métodos para alterar e
obter o nome do estudante e as notas. Além disso, crie um método para calcular a
média do estudante. No método main, crie uma lista com 03 estudantes e forneça
as seguintes opções:

1. Listar os estudantes aprovados e suas notas
2. Listar os estudantes reprovados e suas notas
3. Listar as matriculas e as notas de todos os estudantes
4. Listar os nomes e os endereços de todos os estudantes
*/
import 'dart:collection';
import 'dart:io';
void main() {
  List<Aluno> alunos = [];
  print("Informe quantos alunos deseja adicionar");
  int aluno_qtd = int.parse(stdin.readLineSync()!);
  for(int i = 0; i < aluno_qtd; i++) {
    print("Informe:");
    print("Nome:");
    String nome = stdin.readLineSync()!;
    print("Nota:");
    double nota = double.parse(stdin.readLineSync()!);
    print("Endereço:");
    String endereco = stdin.readLineSync()!;
    print("Matrícula:");
    String matricula = stdin.readLineSync()!;
    Aluno aluno = new Aluno(nome, nota, endereco, matricula);
    alunos.add(aluno);
  }

  print("Escolha: ");
  print("1. Listar os estudantes aprovados e suas notas \n2. Listar os estudantes reprovados e suas notas \n3. Listar as matriculas e as notas de todos os estudantes \n4. Listar os nomes e os endereços de todos os estudantes");
  int opcao = int.parse(stdin.readLineSync()!);
  switch(opcao) {
    case 1:
      for(Aluno aluno_1 in alunos) {
        if(aluno_1.nota >= 6) {
          print("Nome: " +aluno_1.nome + " Nota: " + aluno_1.nota.toString());
        }
      }
      break;
    case 2:
      for(Aluno aluno_1 in alunos) {
        if(aluno_1.nota < 6) {
          print("Nome: " +aluno_1.nome + " Nota: " + aluno_1.nota.toString());
        }
      }
      break;
    case 3:
      for(Aluno aluno_1 in alunos) {
        print("Nome: " +aluno_1.nome + " Nota: " + aluno_1.nota.toString() + " Matrícula: " + aluno_1.matricula);
      }
      break;
    case 4:
      for(Aluno aluno_1 in alunos) {
        print("Nome: " +aluno_1.nome + " Endereço: " + aluno_1.endereco);
      }
      break;
    default:break;
  }
}

class Aluno {
  String nome;
  double nota;
  String endereco;
  String matricula;
  
  Aluno(this.nome, this.nota, this.endereco, this.matricula);
}