import 'dart:html';
import 'package:polymer/polymer.dart';

class App extends Object with ObservableMixin {
  @observable
  String message;
}

main() {
  query('#tmpl').model = new App();
}