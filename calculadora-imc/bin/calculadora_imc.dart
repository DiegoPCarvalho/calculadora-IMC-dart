import 'package:calculadora_imc/functions/funcoes.dart' as funcoes;

void main(List<String> arguments) {
  var line = funcoes.lerConsole("Digite 'C' para Iniciar ou 'S' para sair: ");
  funcoes.validarComando(line);
  print('\r');

  while (line != "S" && line != 's') {
    print("Calculadora IMC");
    print('\r');

    var nome = funcoes.lerConsole("Digite o seu nome:");
    print('\r');

    var peso = funcoes.lerConsoleDouble("Digite o seu peso:");
    print('\r');

    var altura =
        funcoes.lerConsoleDouble("digite a sua Altura: - EX(1.8, 2.7)");
    print('\r');

    double imc = funcoes.contaImc(peso, altura);

    print("Nome: $nome");
    print("Peso: $peso kg");
    print("Altura: $altura m");

    funcoes.tratativaErro(imc);
    print('\r');

    line =
        funcoes.lerConsole("Digite 'C' para fazer de novo ou 'S' para sair: ");
    funcoes.validarComando(line);
  }
}
