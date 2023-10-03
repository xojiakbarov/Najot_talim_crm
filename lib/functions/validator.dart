import 'dart:io';

String validator(String type) {
  bool isTerminated = true;
  late String? input;
  do {
    isTerminated = true;
    print("${type}ni kiritng: ");
    input = stdin.readLineSync();
    try {
      if (input == null || input.isEmpty) {
        throw Exception("$type bo'sh bo'lishi mumkin emas!");
      }
    } catch (error) {
      print(
          "Siz $type uchun xato qiymat berdingiz. iltimos qayta qiymat kiriting");
      isTerminated = false;
    }
  } while (!isTerminated);

  return input!;
}
