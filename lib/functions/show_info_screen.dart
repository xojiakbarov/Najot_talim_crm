import 'dart:io';

// import 'package:najot_talim_crm/functions/clear_terminal.dart';
import 'package:najot_talim_crm/functions/clear_terminal.dart';
import 'package:najot_talim_crm/functions/edit_profile.dart';
import 'package:najot_talim_crm/functions/terminate_app.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';
// import 'package:najot_talim_crm/functions/show_menu.dart';

void showInfoScreen() {
  String? input = stdin.readLineSync();

  if (input == null) {
    print("Siz hech qanday buyruq kiritmadingiz!");
  } else {
    // Yaroqsiz qiymat kiritish
    var parsedInput = int.tryParse(input);

    if (parsedInput == null) {
      print("Szi yaroqsiz qiymat kiritingiz!");
    } else {
      clearTerminal();
      if (parsedInput <= 3 && parsedInput >= 0) {
        switch (parsedInput) {
          case 0:
            isTerminated = terminateApp();
            break;
          case 1:
            print(student);
            stdin.readLineSync();
            break;
          case 2:
            authenticatedUser = editProfile();
            break;
          case 3:
            authenticatedUser = null;
            break;
          default:
        }
      } else {
        print("Siz kiritgan buyruq mavjud emas!");
      }
    }
  }
}
