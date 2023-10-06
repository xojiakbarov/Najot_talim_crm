// import 'dart:io';

import 'package:najot_talim_crm/conts/constants.dart';
// import 'package:najot_talim_crm/functions/clear_terminal.dart';
import 'package:najot_talim_crm/functions/select_task.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';


void showMenu() {
  // ToDO 2: Menu driver ilova qilish
  while (!isTerminated) {
    // clearTerminal();
    // TODO: Printni o'chirib tashla  
    print(student == null || teacher == null? AppConstans.signupText : AppConstans.mainManuText);
    selectTask();
  }
}
