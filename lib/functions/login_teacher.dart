import 'dart:io';

import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';


void loginTeacher() {
  var id = validator("Id");
  var password = validator("Parol");

  try {
    teacher = teacherRepository.fetchTeacher(id, password);
  } catch (error) {
    print("Foydalanuvchi topilmadi");
    stdin.readLineSync();
  }
}