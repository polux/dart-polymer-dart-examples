import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/polymer_expressions.dart';
import 'dart:html';

class Model extends Object with ObservableMixin {
  @observable int selected = 1; // Make sure this is not null.
                                // Set it to the default selection index.
  List fruits = ['apples', 'bananas', 'pears'];
  @observable String value = '';
}

main() {
  TemplateElement template = query('#tmpl') as TemplateElement;
  template.bindingDelegate = new PolymerExpressions();
  template.model = new Model();
}