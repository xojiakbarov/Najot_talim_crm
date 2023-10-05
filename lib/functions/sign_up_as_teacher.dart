import 'package:najot_talim_crm/functions/select_gender.dart';
import 'package:najot_talim_crm/functions/validator.dart';


import '../app.dart';
import '../models/teacher.dart';

Teacher signUpAsTeacher() {
  late bool isMale;
  var id = validator("ID");
  var firstName = validator("Ism");
  var lastName = validator("Familiya");
  var password = validator("Parol");
  isMale = selectGender();
  var subject = validator("Fan");

  // var  = validator("Fan");

  return teacherRepository.createTeacher(
    isMale: isMale,
    salary: 0,
    subject: subject,
    firstName: firstName,
    id: id,
    lastName: lastName,
    password: password,
  );
}
