
import 'dart:io';

class Student {
  String firstName;
  String lastName;
  int _password;

  Student(this.firstName, this.lastName, this._password) {
    this.welcome_page();
  }

  welcome_page() {
    print("""
      1 - login 
      2 - sign in
      3 - exit
      """);

    int user_input = 1;
    if (user_input == 1) {
      this.login_page();
    } else if (user_input == 2) {
      this.signin_page();
    } else if (user_input == 3) {
      exit(0);
    } else {

    }
  }

  login_page() {}

  signin_page() {}


  set_password(int oldPassword, int newPassword) {
    if (_password == oldPassword) {
      _password = newPassword;
    }
  }

  get_password() {
    return _password;
  }
}

