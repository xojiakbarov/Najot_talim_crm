class Student {
  late String firstName;
  late String lastName;
  late int grade;

  Student(
      {required this.firstName, required this.lastName, required this.grade});

  @override
  String toString() {
    return """
    
    Name    ->  ${firstName}
    Surname ->  ${lastName}
    Grade   ->  ${grade}
    """;
  }
}

void main() {
  Student obj1 = Student(firstName: "Sardor", lastName: "Jalilov", grade: 94);
  Student obj2 = Student(firstName: "Farxod", lastName: "Jamshidov", grade: 86);
  Student obj3 = Student(firstName: "Asqar", lastName: "Ergashev", grade: 77);
  Student obj4 = Student(firstName: "Jorulloh", lastName: "Nabiyev", grade: 95);
  Student obj5 = Student(firstName: "Fozil", lastName: "Shokirov", grade: 78);

  List<Student> classroom = [obj1, obj2, obj3, obj4, obj5];

  print(classroom.where((i) => i.grade >= 85 && i.grade <= 95));
}
