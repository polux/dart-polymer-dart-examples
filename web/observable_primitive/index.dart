import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';

// Be sure to mixin ObservableMixin with you use @observable.

class App extends Object with ObservableMixin {
  @observable
  int counter = 0;
}

main() {
  App app = new App();
  
  new Timer.periodic(const Duration(seconds: 1), (_) {
    app.counter++;
  });
  
  // Binds the model object to the DOM.
  query("#tmpl").model = app;
}