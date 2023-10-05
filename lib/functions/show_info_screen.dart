import 'dart:io';

import 'package:najot_talim_crm/functions/terminate_app.dart';

import '../app.dart';
import 'clear_terminal.dart';
import 'edit_profile.dart';


void showInfoScreen() {
  String? input = stdin.readLineSync();

  if (input == null) {
    print("Siz hech qanday buyruq kiritmadingiz!");
  } else {
    // Yaroqsiz qiymat kiritish
    var parsedInput = int.tryParse(input);

    if (parsedInput == null) {
      print("Siz yaroqsiz qiymat kiritdingiz!");
    } else {
      clearTerminal();
      if (parsedInput <= 4 && parsedInput >= 1) {
        switch (parsedInput) {
          case 1:
            print(student);
            stdin.readLineSync();
            break;
          case 2:
            student = editProfile();
            break;
          case 3:
            student = null;
            break;
          case 4:
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
