import 'package:polymer/polymer.dart';
import 'dart:html';
import 'models.dart';

@CustomTag('person-tag')
class PersonTag extends LIElement with Polymer, Observable {
  @published Person person = new Person();
  @published List<Person> people = [];
  
  PersonTag.created() : super.created();
  
  void deletePerson(Event e, var detail, Node target) {
    if (people != null) people.remove(person);
  }
}