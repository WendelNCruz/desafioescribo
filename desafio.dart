import 'dart:io';

int somaDivisiveis(int numero) {
  int resultado = 0;

  for (int i = 1; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      resultado += i;
    }
  }

  return resultado;
}

void main() {
  stdout.write("Digite um número inteiro e positivo: ");
  String entrada = stdin.readLineSync()!;

  try {
    int numero = int.parse(entrada);

    if (numero > 0) {
      int resultado = somaDivisiveis(numero);
      print(
          "O somatório dos números menores que $numero e divisíveis por 3 ou 5 é: $resultado");
    } else {
      print("Por favor, digite um número inteiro positivo.");
    }
  } catch (e) {
    print("Por favor, digite um número válido.");
  }
}
