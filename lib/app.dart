import 'package:najot_talim_crm/repository/student.dart';
import 'package:najot_talim_crm/repository/teacher.dart';


import 'functions/show_menu.dart';
import 'models/student.dart';

Student? student;
late StudentRepository repository;
late TeacherRepository teacherRepository;
bool isTerminated = false;
void runApp() {
  repository = StudentRepository();
  teacherRepository = TeacherRepository();
  showMenu();

  // TODO 3: Sign up funksiyasini qo'shish
  // TODO 4: Logout funksiyasini qo'shish
  // TODO 5: Login funksiyasini qo'shish

  // TODO 7:
  // TODO 8:
}
