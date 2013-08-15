import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';

class App extends Object with ObservableMixin {
  @observable
  DateTime timestamp;
  
  App() {
    bindProperty(this, const Symbol('timestamp'),
        () => notifyProperty(this, const Symbol('second')));
  }
  
  int get second => timestamp.second;
}

main() {
  App app = new App();
  new Timer.periodic(const Duration(seconds: 1), (_) {
    app.timestamp = new DateTime.now();
  });
  query('#tmpl').model = app;
}