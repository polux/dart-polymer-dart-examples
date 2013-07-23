import 'dart:html';
import 'package:mdv/mdv.dart' as mdv;

class Person {
  String firstName;
  String lastName;
  
  Person(this.firstName, this.lastName);
}

main() {
  mdv.initialize();
  
  List people = [new Person('Bob', 'Smith'), new Person('Alice', 'Johnson')];
  
  query('#tmpl').model = people;
}