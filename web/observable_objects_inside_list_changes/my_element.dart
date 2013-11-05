library my_element;

import 'package:polymer/polymer.dart';
import 'dart:html';
import 'models.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement {
  final List people = toObservable([]); // observe adds/removes to the list
  final Person newPerson = new Person();
  @observable int signedCount;
  
  MyElement.created() : super.created() {
    ListPathObserver observer = new ListPathObserver(people, 'signedAgreement');
    observer.changes.listen((_) {
      signedCount = people.where((Person p) => p.signedAgreement).length;
    });
  }
  
  void save(Event e, var detail, Node target) {
    people.add(new Person.from(newPerson));
    newPerson.blank();
  }
}