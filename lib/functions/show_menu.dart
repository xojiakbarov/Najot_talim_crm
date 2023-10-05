


import 'package:najot_talim_crm/functions/select_task.dart';

import '../app.dart';
import '../conts/constants.dart';
import 'clear_terminal.dart';

void showMenu() {
  // TODO 2: Menu Driven ilova qilish
  while (!isTerminated) {
    clearTerminal();
    // TODO: Printni o'chirib tashla
    print(student == null ? AppConstans.signupText : AppConstans.studentText);
    selectTask();
    
  }
}
