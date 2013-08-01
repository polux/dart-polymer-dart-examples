import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';
import 'package:mdv/mdv.dart' as mdv;

class App extends Object with ObservableMixin {
  @observable
  String message;
}

main() {
  mdv.initialize();
  
  query('#tmpl').model = new App();
  
  // XXX Why do I need to do this? Shouldn't this be automatic?
  
  new Timer.periodic(const Duration(seconds: 1), (_) {
    Observable.dirtyCheck();
  });
}