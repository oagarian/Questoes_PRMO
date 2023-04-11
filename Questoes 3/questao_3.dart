/*Crie uma classe Livro que possua: autor, editora, ISBN, titulo,
categoria e Ano de Edição. No método main, crie uma lista com 03 livros e forneça
as seguintes opções:
1. Listar livros por categoria
2. Listar livros por editora
3. Listar livros por autor
4. Listar todos os livros disponíveis
*/
import 'dart:collection';
import 'dart:io';

void main() {
  List<Livro> livros = [];
  print("Informe quantos livros deseja adicionar");
  int quantidade_livros = int.parse(stdin.readLineSync()!);
  for(int i = 0; i < quantidade_livros; i++) {
    print("Informe:");
    print("Autor:");
    String autor = stdin.readLineSync()!;
    print("Editora:");
    String editora = stdin.readLineSync()!;
    print("ISBN:");
    String ISBN = stdin.readLineSync()!;
    print("Título:");
    String titulo = stdin.readLineSync()!;
    print("Categoria:");
    String categoria = stdin.readLineSync()!;
    print("Ano de edição:");
    String ano_edicao = stdin.readLineSync()!;
    Livro livro = new Livro(autor, editora, ISBN, titulo, categoria, ano_edicao);
    livros.add(livro);
  }

  print("Informe a opção desejada");
  print("1. Listar livros por categoria \n 2. Listar livros por editora \n3. Listar livros por autor \n4. Listar todos os livros disponíveis");
  int opcao = int.parse(stdin.readLineSync()!);
  switch(opcao){
    case 1:
      Map<String, List<String>> livrosPorCategoria = {};

      for (Livro livro in livros) {
        if (!livrosPorCategoria.containsKey(livro.categoria)) {
          livrosPorCategoria[livro.categoria] = [];
        }
        List<String> livros_titulo = [];
        livros_titulo.add(livro.titulo);
        livrosPorCategoria[livro.categoria] = livros_titulo;
      }

      for (String categoria in livrosPorCategoria.keys) {
        print('Livros por ${categoria}: ${livrosPorCategoria[categoria].toString()}');
      }
      break;
    case 2:
      
      case 1:
      Map<String, List<String>> livrosPorEditora = {};

      for (Livro livro in livros) {
        if (!livrosPorEditora.containsKey(livro.editora)) {
          livrosPorEditora[livro.editora] = [];
        }
        List<String> livros_titulo = [];
        livros_titulo.add(livro.titulo);
        livrosPorEditora[livro.editora] = livros_titulo;
      }

      for (String editora in livrosPorEditora.keys) {
        print('Livros por ${editora}: ${livrosPorEditora[editora].toString()}');
      }
      break;
    case 3:
      
      Map<String, List<String>> livrosPorAutor = {};

      for (Livro livro in livros) {
        if (!livrosPorAutor.containsKey(livro.autor)) {
          livrosPorAutor[livro.autor] = [];
        }
        List<String> livros_titulo = [];
        livros_titulo.add(livro.titulo);
        livrosPorAutor[livro.autor] = livros_titulo;
      }

      for (String autor in livrosPorAutor.keys) {
        print('Livros por ${autor}: ${livrosPorAutor[autor].toString()}');
      }
      break;
    case 4:
      for(int i = 0; i < livros.length; i ++){
        print(livros[i].titulo);
      }
      break;
    default:
      break;
  }
}



class Livro {
  String autor;
  String editora;
  String ISBN;
  String titulo = "";
  String categoria;
  String ano_edicao;

  Livro(this.autor, this.editora, this.ISBN, this.titulo, this.categoria, this.ano_edicao);


}
