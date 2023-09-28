import 'dart:io';
import 'najot_talim_crm.dart';

 String cfirstName="";
 String clastName="";
 String cpassword="";

welcome_page() {
  print("""
      1 - login 
      2 - sign in
      3 - exit
      4 - logout
      """);
  int choice =int.parse(stdin.readLineSync()!);
  int userInput = choice;
  if (userInput == 1) {
    login_page();
  } else if (userInput == 2) {
    signin_page();
  } else if (userInput == 3) {
    exit(0);
  } else if(userInput == 4) {
    logout_page();

  }
}

logout_page() {
  print("Siz chiqib ketingiz");
}
login_page() {
    print("Login");
  print("Ismizi kiriting: ");
  String? firstName=stdin.readLineSync();
  print("Familiyangizi kiriting: ");
  String? lastName=stdin.readLineSync();
  print("password: ");
    String? password=stdin.readLineSync();

  if(cfirstName == firstName || clastName == lastName || cpassword == password){
    print("Logindan o'tdingiz");
}else{
    print("Login hato");
  }
}

signin_page() {
  print("Sing in");
  print("Ismizi kiriting: ");
  String? cfirstName=stdin.readLineSync();
  print("Familiyangizi kiriting: ");
  String? clastName=stdin.readLineSync();
  print("password: ");
  String? cpassword=stdin.readLineSync();
  print("Royhatdan o'tiz");

}

void main() {
welcome_page();
  // Student student = Student("Eshmat", "Toshmatov", 1111);
  // print(student.get_password());
  // student.set_password(1211, 2222);
  // print(student.get_password());




}

