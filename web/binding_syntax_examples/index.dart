import 'dart:html';
import 'package:fancy_syntax/syntax.dart';

class Person {
  String firstName;
  String lastName;
  bool signedAgreement;
  int age;
  Map<String, Address> addresses = new Map<String, Address>();
  List<Color> favoriteColors = new List<Color>();
  
  String get fullName => '$firstName $lastName';
  
  Address addressFor(String name) => addresses[name];
}

class Address {
  String street;
  String city;
  
  Address(this.street, this.city);
}

class Color {
  String name;
  String hex;
  
  String toString() => '$name is $hex in hex';
}

main() {
  Person bob = new Person()
      ..firstName = 'Bob'
      ..lastName = 'Smith'
      ..signedAgreement = true
      ..age = 42
      ..favoriteColors.add(new Color()..name="red"..hex="#FF0000")
      ..favoriteColors.add(new Color()..name="yellow"..hex="#FFFF00")
      ..addresses['home'] = new Address("main st", "smallville")
      ..addresses['work'] = new Address('oak way', 'gotham');
  
  TemplateElement template = query('#tmpl');
  template.bindingDelegate = new FancySyntax(globals: {
    'uppercase': (String input) => input.toUpperCase()
  });
  template.model = bob;
}