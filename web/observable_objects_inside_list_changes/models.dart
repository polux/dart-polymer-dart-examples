library models;

import 'package:polymer/polymer.dart';

class Person extends Object with ObservableMixin {
  @observable String name;
  @observable bool signedAgreement = false;
  
  Person();
  
  Person.from(Person other) {
    name = other.name;
    signedAgreement = other.signedAgreement;
  }
  
  blank() {
    name = '';
    signedAgreement = false;
  }
}