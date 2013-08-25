import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';

class Model extends Object with ObservableMixin {
  @observable int value = 0;
}

/**
 * The entry point to the application.
 */
void main() {
  TemplateElement tmpl = query('#tmpl') as TemplateElement;
  Model model = new Model();
  tmpl.model = model;

  new Timer.periodic(const Duration(milliseconds: 10), (t) {
    model.value += 1;
  });
}
