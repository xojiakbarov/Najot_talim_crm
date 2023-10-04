import 'package:najot_talim_crm/models/students.dart';
// import 'package:najot_talim_crm/najot_talim_crm.dart';

abstract class StudentRepository {
  List<Student> students = [];

  factory StudentRepository() => StudentRepositoryImpl();

  Student createStudent({
    required String id,
    required String firstName,
    required String lastName,
    required String password,
    required bool isMale,
    required String course,
  });

  bool delateStudent(String id);

  bool updateStudent(String id, Student student);

  Student fetchStudent(String id, String password);

  List<Student> fetchStudents();
}

class StudentRepositoryImpl implements StudentRepository {
  @override
  List<Student> students = [];

  @override
  Student createStudent(
      {required String id,
      required String firstName,
      required String lastName,
      required String password,
      required bool isMale,
      required String course}) {
    var newStudent = Student(
      id: id,
      firstName: firstName,
      lastName: lastName,
      password: password,
      isMale: isMale,
      course: course,
    );

    students.add(newStudent);

    return newStudent;
  }

  @override
  bool delateStudent(String id) {
    late bool isDalated;

    try {
      students.removeWhere((element) => element.id == id);
      isDalated = true;
    } catch (e) {
      isDalated = false;
    }

    return isDalated;
  }

  @override
  Student fetchStudent (String id, String password) {
    var searchedStudent = students.firstWhere(
        (element) => element.id == id && element.password == password);
    return searchedStudent;
  }

  @override
  List<Student> fetchStudents() {
    return students;
  }

  @override
  bool updateStudent(String id, Student student) {
    // TODO: implement updateStudent
    throw UnimplementedError();
  }
}
