// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

import 'package:najot_talim_crm/models/authenticated_user.dart';
import 'package:najot_talim_crm/models/person.dart';

class Teacher extends AuthenticatedUser {
  final String id;
  final String subject;
  final String password;
  final String? email;
  final int salary;

  Teacher({
    required String firstName,
    required String lastName,
    required bool isMale,
    required this.id,
    required this.subject,
    required this.password,
    this.email,
    required this.salary,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          isMale: isMale,
        );

  Teacher copyWith({
    String? id,
    String? subject,
    String? password,
    String? email,
    int? salary,
    String? firstName,
    String? lastName,
    bool? isMale,
  }) {
    return Teacher(
      id: id ?? this.id,
      subject: subject ?? this.subject,
      password: password ?? this.password,
      email: email ?? this.email,
      salary: salary ?? this.salary,
      isMale: isMale ?? this.isMale,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subject': subject,
      'password': password,
      'email': email,
      'salary': salary,
      'firstName': firstName,
      'lastName': lastName,
      'isMale': isMale,
    };
  }

  @override
  String toString() {
    return 'Teacher(id: $id, firstName: $firstName, lastName: $lastName, isMale: $isMale subject: $subject, password: $password, email: $email, salary: $salary)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Teacher &&
        other.id == id &&
        other.subject == subject &&
        other.password == password &&
        other.email == email &&
        other.salary == salary &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.isMale == isMale;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        subject.hashCode ^
        password.hashCode ^
        email.hashCode ^
        salary.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        isMale.hashCode;
  }
}
