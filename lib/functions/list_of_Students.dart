import 'package:najot_talim_crm/functions/validator.dart';
import 'package:najot_talim_crm/najot_talim_crm.dart';

void listOfStudents() {
  print("kirvotti");
    bool isTerminated = true;
  do {
    print("""
<<< Kimni ro'yxatni ko'rishni istaysiz? >>>

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
            var teachers = teacherRepository.fetchTeachers();
            for(final teacher in teachers) {
              print(teacher);
            }
            break;
          case 2:
            var students = repository.fetchStudents();
            for( final student in students) {
              print(student);
            }
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



// var students = repository.fetchStudents();
//   var teachers = teacherRepository.fetchTeachers();

//   if (students.isEmpty ) {
//     for (final student in students) {
//       print(student);
//     }
   
//   } else if (teachers.isEmpty){
//       for (final teacher in teachers) {
//             print(teacher);
//           }
//   } else {
//     print("""

// Hali hech kim  ro'yxatdan o'tmagan. Avval ro'yxatdan o'ting!

// """);
//   }