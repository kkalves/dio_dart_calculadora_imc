import 'dart:math';

class Person {
  String _name = "";
  double _weight = 0;
  double _height = 0;

  Person(this._name, this._weight, this._height);

  String getName() {
    return _name;
  }

  void setName(String name) {
    _name = name;
  }

  double getWeight() {
    return _weight;
  }

  void setWeight(weight) {
    _weight = weight;
  }

  double getHeight() {
    return _height;
  }

  void setHeight(height) {
    _height = height;
  }

  double calculateIMC() => getWeight() / pow(getHeight(), 2);

  String returnBMIClassification() {
    double bmi = calculateIMC();
    if (bmi < 16) {
      return "Magreza Grave!";
    } else if (bmi < 17) {
      return "Magreza Moderada!";
    } else if (bmi < 18.5) {
      return "Magreza Leve!";
    } else if (bmi < 25) {
      return "Saudável!";
    } else if (bmi < 30) {
      return "Sobrepeso!";
    } else if (bmi < 35) {
      return "Obesidade Grau I!";
    } else if (bmi < 40) {
      return "Obesidade Grau II (Severa)!";
    } else {
      return "Obesidade Grau III (Mórbida)!";
    }
  }

  @override
  String toString() {
    return "${getName()} possui o peso de ${getWeight()}kg e a altura de ${getHeight()}m"
        "\nSua classificação IMC é: ${returnBMIClassification()}";
  }
}
