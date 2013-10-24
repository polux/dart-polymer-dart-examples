library models;

import 'package:polymer/polymer.dart';

class Person extends Object with Observable {
  @observable String firstName;
  String lastName;
  bool signedAgreement;
  int age;
  String company; // keep as null
  Map<String, Address> addresses = new Map<String, Address>();
  List<Color> favoriteColors = new List<Color>();
  
  List<Color> nullColors;
  Address thisIsNull;
  
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