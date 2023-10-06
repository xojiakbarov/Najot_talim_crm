import 'package:najot_talim_crm/functions/show_auth_screen.dart';
import 'package:najot_talim_crm/functions/show_info_screen.dart';

import '../najot_talim_crm.dart';

void selectTask() {
  if (student == null || teacher == null) {
    showAuthScreen();
  } else {
    showInfoScreen();
  }


}
