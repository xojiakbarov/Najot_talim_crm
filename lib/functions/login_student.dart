import 'dart:io';

import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

void loginStudent() {
  var id = validator("Id");
  var password = validator("Parol");

  try {
    student = repository.fetchStudent(id, password);
  } catch (error) {
    print("Foydalanuvchi topilmadi");
    stdin.readLineSync();
  }
}
