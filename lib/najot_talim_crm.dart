import 'package:najot_talim_crm/functions/show_menu.dart';
import 'package:najot_talim_crm/models/students.dart';
import 'package:najot_talim_crm/models/teacher.dart';
import 'package:najot_talim_crm/repository/student.dart';
import 'package:najot_talim_crm/repository/teacher.dart';

Student? student;
Teacher? teacher;
late StudentRepository repository;
late TeacherRepository teacherRepository;
bool isTerminated = false;

void runApp() {
  repository = StudentRepository();
  teacherRepository = TeacherRepository();
  showMenu();

  // TODO 1: Make back work in registeration
  // TODO 2: Sign as a teacher
  // TODO 3: Print menu for printing teacher and students
}
