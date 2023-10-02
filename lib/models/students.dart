class Student {
  final String id;
  final String firstName;
  final String lastName;
  final String password;
  final String? email;
  final bool isMale;
  final String course;

  Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.isMale,
    required this.course,
    this.email,
  });

  @override
  String toString() =>
      'Student(id: $id, firstName: $firstName, lastName: $lastName, password: $password, email: $email, isMale: $isMale, course: $course)';
    
}
