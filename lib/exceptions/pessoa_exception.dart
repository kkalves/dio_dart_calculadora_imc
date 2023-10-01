class InvalidStringException implements Exception {
  String error() => "O Nome não pode ser vazio!";

  @override
  String toString() {
    return "InvalidStringException: ${error()}";
  }
}

class InvalidDoubleException implements Exception {
  String error() =>
      "Peso Inválido, O Valor não pode ser vazio e deve ser maior que zero!";

  @override
  String toString() {
    return "InvalidNameException: ${error()}";
  }
}

// class InvalidHeightException implements Exception {
//   String error() => "Altura Inválido, O Valor deve ser informado em Metros!";

//   @override
//   String toString() {
//     return "InvalidNameException: ${error()}";
//   }
// }
