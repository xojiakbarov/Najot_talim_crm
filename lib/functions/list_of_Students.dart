import 'package:najot_talim_crm/najot_talim_crm.dart';

void listOfStudents() {
  print("kirvotti");
  var students = repository.fetchStudents();
  var teachers = teacherRepository.fetchTeachers();

  if (students.isEmpty ) {
    for (final student in students) {
      print(student);
    }
   
  } else if (teachers.isEmpty){
      for (final teacher in teachers) {
            print(teacher);
          }
  } else {
    print("""

Hali studentlar ro'yxatdan o'tmagan. Avval ro'yxatdan o'ting!

""");
  }
}
