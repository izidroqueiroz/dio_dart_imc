import 'package:imc/classes/pessoa.dart';
import 'package:imc/classes/imc.dart';
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  String? nome;
  double peso, altura;

  print('Informe seu nome:');
  nome = stdin.readLineSync(encoding: utf8);
  if (nome == null) {
    print('Nome não informado');
    exit(1);
  }
  if (nome.isEmpty) {
    print('Nome não informado');
    exit(1);
  }

  print('Informe seu peso (kg):');
  var line = stdin.readLineSync(encoding: utf8);
  try {
    peso = double.parse(line ?? '');
  } catch (e) {
    print('Peso inválido');
    exit(1);
  }

  print('Informe sua altura (m):');
  line = stdin.readLineSync(encoding: utf8);
  try {
    altura = double.parse(line ?? '');
  } catch (e) {
    print('Altura inválida');
    exit(1);
  }

  var pessoa = Pessoa(nome, peso, altura);
  var myIMC = IMC(pessoa.getPeso(), pessoa.getAltura());

  print('IMC: ${myIMC.getImc()}');
  print('Classificação: ${myIMC.getClassificacao()}');
}
