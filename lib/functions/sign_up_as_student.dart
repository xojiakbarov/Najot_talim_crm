import 'package:najot_talim_crm/functions/select_gender.dart';
import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/models/students.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

Student signUpAsStudent() {
  late bool isMale;
  var id = validator("Id");
  var firstName = validator("Ism");
  var lastName = validator("Familiya");
  var password = validator("Parol");
  isMale = selectGender();
  var course = validator("Kurs");

  return repository.createStudent(
    id: id,
    firstName: firstName,
    lastName: lastName,
    password: password,
    isMale: isMale,
    course: course,
  );
}
