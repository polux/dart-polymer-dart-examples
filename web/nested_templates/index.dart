import 'dart:html';
import 'package:polymer_expressions/polymer_expressions.dart';

class Person {
  String name;
  Address address;
  List colors;
}

class Address {
  String city;
  String zip;
}

main() {
  var person = new Person()
      ..name = 'Bob Smith'
      ..colors = ['red', 'yellow', 'orange']
      ..address = (new Address()
          ..city = 'Springfield'
          ..zip = '99999');
  
  TemplateElement tmpl = query('#tmpl') as TemplateElement;
  TemplateElement tmpl2 = query('#tmpl') as TemplateElement;
  
  tmpl.bindingDelegate = new PolymerExpressions();
  tmpl2.bindingDelegate = new PolymerExpressions();
  
  tmpl.model = person;
  tmpl2.model = person;
}