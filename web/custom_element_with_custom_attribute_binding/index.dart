import 'dart:html';
import 'package:polymer/polymer.dart';

class Model extends Object with Observable {
  @observable
  String value = "Initial value";
}

main() {
  querySelector('#tmpl').model = new Model();
}