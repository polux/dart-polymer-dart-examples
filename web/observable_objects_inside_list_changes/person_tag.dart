import 'package:polymer/polymer.dart';
import 'dart:html';
import 'models.dart';

@CustomTag('person-tag')
class PersonTag extends PolymerElement {
  @observable @published Person person = new Person();
  @observable @published List<Person> people = [];
  
  void deletePerson(Event e, var detail, Node target) {
    if (people != null) people.remove(person);
  }
}