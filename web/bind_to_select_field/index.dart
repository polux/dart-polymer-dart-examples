import 'package:polymer/polymer.dart';
import 'package:fancy_syntax/syntax.dart';
import 'dart:html';

class Model extends Object with ObservableMixin {
  @observable int selected = 0;
  List fruits = ['apples', 'bananas', 'pears'];
}

main() {
  TemplateElement template = query('#tmpl') as TemplateElement;
  template.bindingDelegate = new FancySyntax();
  template.model = new Model();
}