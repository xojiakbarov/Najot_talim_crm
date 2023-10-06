import 'package:najot_talim_crm/functions/select_gender.dart';
import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/models/teacher.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

Teacher signUpAsTeacher() {
  late bool isMale;
  var id = validator("Id");
  var firstName = validator("Ism");
  var lastName = validator("Familiya");
  var password = validator("Parol");
  isMale = selectGender();
  var subject = validator("Fan");
  

  return teacherRepository.createTeacher(
    isMale: isMale,
    id: id,
    salary:  0,
    firstName: firstName,
    lastName: lastName,
    password: password,
    subject: subject,
  );
}
