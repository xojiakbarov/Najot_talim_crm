import 'dart:io';

String validator(String type) {
  print("${type}ni kiritng: ");
  var input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    throw Exception("$type bo'sh bo'lishi mumkin emas!");
  }
  return input;
}
