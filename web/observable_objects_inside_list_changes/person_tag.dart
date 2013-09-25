import 'package:polymer/polymer.dart';
import 'dart:html';
import 'models.dart';

@CustomTag('person-tag')
class PersonTag extends PolymerElement with ObservableMixin {
  @observable Person person = new Person();
  @observable List<Person> people = [];
  
  void deletePerson(Event e, var detail, Node target) {
    if (people != null) people.remove(person);
  }
}