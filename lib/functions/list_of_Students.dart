



import 'package:najot_talim_crm/najot_talim_crm.dart';

void listOfStudents() {
  if (registeredStudents.isNotEmpty) {
    for (student in registeredStudents) {
      print(student); 
    } 
  } else {
    print("""

Hali studentlar ro'yxatdan o'tmagan. Avval ro'yxatdan o'ting!

""");
  }
}