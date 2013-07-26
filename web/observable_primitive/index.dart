import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';
import 'package:observe/observe.dart';
import 'package:mdv/mdv.dart' as mdv;

class App extends Object with ObservableMixin {
//  @observable
//  int counter = 0;
  
  int _counter = 0;
  
  // XXX: All this should go away when https://codereview.chromium.org/19771010/
  // lands in the SDK.
  int get counter => _counter;
  void set counter(int c) {
    int oldValue = _counter;
    _counter = notifyPropertyChange(const Symbol('counter'), _counter, c);
  }
}

main() {
  mdv.initialize();
  
  App app = new App();
  
  new Timer.periodic(const Duration(seconds: 1), (_) {
    app.counter++;
  });
  
  query("#tmpl").model = app;
}