import 'dart:html';
import 'package:polymer/polymer.dart';

class Model extends Object with ObservableMixin {
  @observable
  String value = "Initial value";
}

main() {
  query('#tmpl').model = new Model();
}