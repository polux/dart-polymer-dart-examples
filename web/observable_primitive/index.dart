import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';
import 'package:mdv/mdv.dart' as mdv;

// Be sure to mixin ObservableMixin with you use @observable.

class App extends Object with ObservableMixin {
  @observable
  int counter = 0;
}

main() {
  // You'll get a warning if you don't init MDV.
  mdv.initialize();
  
  App app = new App();
  
  new Timer.periodic(const Duration(seconds: 1), (_) {
    app.counter++;
    // IMPORTANT: If your change happens outside of a UI event (e.g. click),
    // then you need to call the following line:
    Observable.dirtyCheck();
  });
  
  // Binds the model object to the DOM.
  query("#tmpl").model = app;
}