import 'package:najot_talim_crm/conts/constants.dart';
import 'package:najot_talim_crm/functions/clear_terminal.dart';
import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/models/students.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

Student editProfile() {
  bool isTerminated = false;
  final int index = registeredStudents.indexOf(student!);
  do {
    clearTerminal();
    print(AppConstans.editProgileText);

    var input = validator("Buyruq");

    final int task = int.tryParse(input) ?? -1;

    if (task >= 0 || task < 6) {
      switch (task) {
        case 0:
          isTerminated = true;
          break;
        case 1:
          final firstName = validator("Ism");
          student = student!.copyWith(firstName: firstName);
          break;
        case 2:
          final lastName = validator("Familiya");
          student = student!.copyWith(lastName: lastName);
          break;
        case 3:
          final password = validator("Parol");
          student = student!.copyWith(password: password);
          break;
        case 4:
          final email = validator("Email");
          student = student!.copyWith(email: email);
          break;
        case 5:
          final course = validator("Kurs");
          student = student!.copyWith(course: course);
          break;
      }
    } else {
      print("Noto'g'ri buyruq kiritingiz! Iltimos, qayta urinib ko'ring");
    }
  } while (!isTerminated);

  registeredStudents[index] = student!;
  return student!;
}
