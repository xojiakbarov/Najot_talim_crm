import 'package:najot_talim_crm/functions/login_student.dart';
import 'package:najot_talim_crm/functions/login_teacher.dart';
import 'package:najot_talim_crm/functions/validator.dart';

void login() {
  bool isTerminated = true;
  do {
    print("""
<<<  Kim sifatida tizimga kirasiz istaysiz?  >>>

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
            isTerminated = true;
            break;
          case 1:
            loginTeacher();
            break;
          case 2:
            loginStudent();
            break;
        }
      } else {
        print("Bunday buyruq mavjud emas");
      }
    } else {
      print("Yaroqsiz qiymat kiritildi");
    }
  } while (!isTerminated);
}
