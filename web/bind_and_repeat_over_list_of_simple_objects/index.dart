import 'dart:html';

class Person {
  String firstName;
  String lastName;
  
  Person(this.firstName, this.lastName);
}

main() {
  List people = [new Person('Bob', 'Smith'), new Person('Alice', 'Johnson')];
  
  query('#tmpl').model = people;
}