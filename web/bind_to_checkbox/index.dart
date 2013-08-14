import 'dart:html';
import 'package:polymer/polymer.dart';

class App extends Object with ObservableMixin {
  @observable
  bool checked = false;
}

main() {
  query('#tmpl').model = new App();
}