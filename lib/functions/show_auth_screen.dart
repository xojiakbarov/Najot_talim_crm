import 'dart:io';

import 'package:najot_talim_crm/functions/sign_up.dart';
import 'package:najot_talim_crm/functions/terminate_app.dart';

import '../app.dart';
import 'clear_terminal.dart';
import 'login.dart';


void showAuthScreen() {
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
            var students = repository.fetchStudents();
            for (final student in students) {
              print(student);
            }
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
