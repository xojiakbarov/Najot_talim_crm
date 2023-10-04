import 'dart:io';

import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

void login() {
  var id = validator("Id");
  var password = validator("Parol");

  try {
    student = repository.fetchStudent(id, password);
  } catch (arror) {
    print("Foydalanuvchi topilmadi");
    stdin.readLineSync();
  }
}
