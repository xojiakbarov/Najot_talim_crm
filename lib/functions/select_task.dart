
import 'package:najot_talim_crm/functions/show_auth_screen.dart';
import 'package:najot_talim_crm/functions/show_info_screen.dart';

import '../app.dart';

void selectTask() {
  if (student == null) {
    showAuthScreen();
  } else {
    showInfoScreen();
  }
}
