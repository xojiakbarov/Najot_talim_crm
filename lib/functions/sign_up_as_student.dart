import 'package:najot_talim_crm/functions/select_gender.dart';
import 'package:najot_talim_crm/functions/validator.dart';

import '../app.dart';
import '../models/student.dart';

Student signUpAsStudent() {
  late bool isMale;
  var id = validator("ID");
  var firstName = validator("Ism");
  var lastName = validator("Familiya");
  var password = validator("Parol");
  isMale = selectGender();
  var course = validator("Kurs");

  return repository.createStudent(
    isMale: isMale,
    course: course,
    firstName: firstName,
    id: id,
    lastName: lastName,
    password: password,
  );
}


