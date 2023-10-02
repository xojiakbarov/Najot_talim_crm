import 'dart:io';

import 'package:najot_talim_crm/functions/show_menu.dart';
import 'package:najot_talim_crm/functions/sign_up.dart';
import 'package:najot_talim_crm/functions/terminate_app.dart';
import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

void showAuthScreen() {
  String? input = stdin.readLineSync();


  if (input == null) {
    print("Siz hech qanday buyruq kiritmadingiz!");
  } else {
    // Yaroqsiz qiymat kiritish
    var parsedInput = int.tryParse(input);

    if (parsedInput == null) {
      print("Siz yaroqsiz qiymat kiritingiz!");
    } else {
      print(parsedInput);
      if (parsedInput <= 3 && parsedInput >= 1) {
        switch (parsedInput) {
          case 1:
            student = signUp();
            break;
          case 2:
            login();
            break;
          case 3:
            isTerminated = terminateApp();
            break;
          default:
        }
      } else {
        print("Siz kiritgan buyruq mavjud emas!");
      }
    }
  }
}

void login() {
  var id = validator("Id");
  var password = validator("Parol");

  var foundStudent = registeredStudents.firstWhere(
      (element) => element.id == id && element.password == password);
  student = foundStudent;
}
