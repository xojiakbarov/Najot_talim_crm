import 'package:najot_talim_crm/functions/edit_profile.dart';
import 'package:najot_talim_crm/functions/sign_up_as_student.dart';
import 'package:najot_talim_crm/functions/sign_up_as_teacher.dart';
import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

void signUp() {
  bool isTerminated = true;
  do {
    print("""
kim sifatida ro'yxatni o'tishni istaysiz?
1. O'qituvchi
2. Talaba
0. Orqaga
""");
    var input = validator("Buyruq");
    var option = int.tryParse(input);
    if (option != null) {
      if (option >= 0 && option <= 2) {
        switch (option) {
          case 0:
            student = editProfile();
            break;
          case 1:
            signUpAsTeacher();
            break;
          case 2:
            signUpAsStudent();
            break;
        }
      } else {
        print("Bunday buyruq mavjud emas");
      }
    } else {
      print("Yaroqsiz qiymat kiritildi");
    }
  } while (isTerminated);
}
