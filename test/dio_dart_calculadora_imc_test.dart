import 'package:dio_dart_calculadora_imc/model/person.dart';
import 'package:test/test.dart';

void main() {
  group("Retorna o IMC para cada uma das classificações.", () {
    var valuesToTest = {
      {'name': "Teste Magreza Grave", 'weight': 40, 'height': 1.65}:
          "Magreza Grave!",
      {'name': "Teste Magreza Moderada", 'weight': 45, 'height': 1.65}:
          "Magreza Moderada!",
      {'name': "Teste Magreza Leve", 'weight': 50, 'height': 1.65}:
          "Magreza Leve!",
      {'name': "Teste Saudável", 'weight': 65, 'height': 1.65}: "Saudável!",
      {'name': "Teste Sobrepeso", 'weight': 80, 'height': 1.65}: "Sobrepeso!",
      {'name': "Teste Obesidade I", 'weight': 90, 'height': 1.65}:
          "Obesidade Grau I!",
      {'name': "Teste Obesidade II", 'weight': 100, 'height': 1.65}:
          "Obesidade Grau II (Severa)!",
      {'name': "Teste Obesidade III", 'weight': 120, 'height': 1.65}:
          "Obesidade Grau III (Mórbida)!",
    };
    valuesToTest.forEach((values, expected) {
      Person person = Person(
          values["name"].toString(),
          double.parse(values["weight"].toString()),
          double.parse(values["height"].toString()));
      test('Entrada: $values', () {
        expect(person.returnBMIClassification(), equalsIgnoringCase(expected));
      });
    });
  });
}
