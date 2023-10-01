import 'package:dio_dart_calculadora_imc/model/person.dart';
import 'package:dio_dart_calculadora_imc/utils/console_util.dart';

void main(List<String> arguments) {
  print('Bem Vindo a Calculadora de IMC!\n');
  var name = ConsoleUtil.validateString("Informe o seu nome: ");
  print(name);
  var weight = ConsoleUtil.validateDouble("Informe o seu peso (KG): ");
  print(weight);
  var height =
      ConsoleUtil.validateDouble("Informe a sua Altura (M): ", isHeight: true);
  print(height);
  Person person = Person(name, weight, height);
  print(person);
}
