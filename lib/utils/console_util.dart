import 'dart:convert';
import 'dart:io';

import 'package:dio_dart_calculadora_imc/exceptions/pessoa_exception.dart';

class ConsoleUtil {
  static String readStringWithText(String text) {
    print(text);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String validateString(String text) {
    int option = 1;
    var name = readStringWithText(text);
    do {
      try {
        if (name.trim() == "") {
          throw InvalidStringException();
        }
        option = 0;
      } on InvalidStringException {
        print(InvalidStringException().error());
        option = 1;
        name = readStringWithText(text);
      }
    } while (option != 0);
    return name;
  }

  static double readDoubleWithText(String text) {
    print(text);
    try {
      return double.parse(stdin.readLineSync(encoding: utf8) ?? "0.0");
    } catch (e) {
      return 0;
    }
  }

  static double validateDouble(String text, {bool isHeight = false}) {
    int option = 1;
    var value = readDoubleWithText(text);
    do {
      try {
        if (value <= 0) {
          throw InvalidDoubleException();
        }
        if (isHeight && value > 5) {
          print("\nO Valor foi informado em cm e será convertido para m.\n");
          value = value / 100;
        }
        option = 0;
      } on InvalidDoubleException {
        print(InvalidDoubleException().error());
        option = 1;
        value = readDoubleWithText(text);
      }
    } while (option != 0);
    return value;
  }
}
