import 'dart:io';

import 'package:najot_talim_crm/functions/validator.dart';

import '../app.dart';



void login() {
  var id = validator("Id");
  var password = validator("Parol");

  try {
    student = repository.fetchStudent(id, password);
  } catch (error) {
    print("Foydalanuvchi topilmadi");
    stdin.readLineSync();
  }
}
