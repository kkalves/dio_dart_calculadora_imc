import 'dart:convert';
import 'dart:io';

import 'package:dio_dart_calculadora_imc/model/pessoa.dart';

void main(List<String> arguments) {
  print('Bem Vindo a Calculadora de IMC!');
  print("Informe o seu nome: ");
  var nome = stdin.readLineSync(encoding: utf8) ?? "";
  print("Informe o seu peso: ");
  var peso = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");
  print("Informe o sua altura: ");
  var altura = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");
  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(pessoa);
}
