// import 'dart:io';

import 'package:najot_talim_crm/conts/constants.dart';
import 'package:najot_talim_crm/functions/clear_terminal.dart';
import 'package:najot_talim_crm/functions/select_task.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

bool isTerminated = false;
void showMenu() {
  // TUDO 2: Menu driver ilova qilish
  while (!isTerminated) {
    clearTerminal();
    print(student == null ? AppConstans.signupText : AppConstans.studentText);
    selectTask();
  }
}
