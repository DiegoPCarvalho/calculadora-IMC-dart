import 'dart:convert';
import 'dart:io';

void imcTipo(double imc) {
  switch (imc) {
    case < 16:
      print("IMC: $imc - Magreza Grave");
      break;
    case >= 16 && < 17:
      print("IMC: $imc - Magreza Moderada");
      break;
    case >= 17 && < 18.5:
      print("IMC: $imc - Magreza Leve");
      break;
    case >= 18.5 && < 25:
      print("IMC: $imc - Saudável");
      break;
    case <= 25 && < 30:
      print("IMC: $imc - Sobrepeso");
      break;
    case <= 30 && < 35:
      print("IMC: $imc - Obesidade Grau I");
      break;
    case <= 35 && < 40:
      print("IMC: $imc - Obesidade Grau II - (Severa)");
      break;
    case >= 40:
      print("IMC: $imc - Obesidade Grau III - (Mórbida)");
      break;
    default:
      exit(0);
  }
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double contaImc(double peso, double altura) {
  return (peso / (altura * altura)).roundToDouble();
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));

  if (numero == null) {
    print("Numero informa incorreto alterando para 0");
    return 0.0;
  } else {
    return numero;
  }
}

void validarComando(String line) {
  if (line != 'C' && line != 'c') {
    line = "s";
    print("Comando Inválido");
    exit(0);
  }
}

void tratativaErro(double imc) {
  if ((imc == 0.0) || (imc == double.infinity)) {
    print("Altura ou Peso inválido tente novamente");
  } else {
    imcTipo(imc);
  }
}
