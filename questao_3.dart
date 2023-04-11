import 'dart:io';

void main() {
  print("Informe a string");
  String texto_normal = stdin.readLineSync()!;
  String texto = texto_normal.toLowerCase();
  print("Número de vogais: ");
  print(contar_vogais(texto));
}

int contar_vogais(String str) {
  int vogais = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == 'a' ||
        str[i] == 'e' ||
        str[i] == 'i' ||
        str[i] == 'o' ||
        str[i] == 'u') {
      vogais++;
    }
  }
  return vogais;

}

