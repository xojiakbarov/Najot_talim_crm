


import 'package:najot_talim_crm/functions/validator.dart';

bool selectGender() {
  late bool isMale;
  print("Genderingizni tanlang: m (male) / f (famale) : ");
  var input = validator("Gender");

  switch (input) {
    case "m":
      isMale = true;
      break;
    case "f":
      isMale = false;
      break;
    default:
      assert(input != "m" && input != "f", "Gender xato tanlangan!");
  }

  return isMale;
}
