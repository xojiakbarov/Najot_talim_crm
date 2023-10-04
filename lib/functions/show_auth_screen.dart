import 'dart:io';

import 'package:najot_talim_crm/functions/clear_terminal.dart';
import 'package:najot_talim_crm/functions/list_of_Students.dart';
import 'package:najot_talim_crm/functions/login.dart';
import 'package:najot_talim_crm/functions/sign_up.dart';
import 'package:najot_talim_crm/functions/terminate_app.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';
// import 'package:najot_talim_crm/functions/validator.dart';
// import 'package:najot_talim_crm/functions/show_menu.dart';

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
      clearTerminal();
      if (parsedInput <= 3 && parsedInput >= 0) {
        switch (parsedInput) {
          case 0:
            isTerminated = terminateApp();
            break;
          case 1:
            signUp();
            break;
          case 2:
            login();
            break;
          case 3:
            listOfStudents();
            stdin.readLineSync();
            break;
          default:
        }
      } else {
        print("Siz kiritgan buyruq mavjud emas!");
      }
    }
  }
}
