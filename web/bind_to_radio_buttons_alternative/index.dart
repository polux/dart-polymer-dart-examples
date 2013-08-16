import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:fancy_syntax/syntax.dart';

class App extends Object with ObservableMixin {
  // No need to mark this as @observable, because the variable itself
  // isn't going to change. The contents will change, but toObservable()
  // takes care of that for us.
  final ObservableMap colors = toObservable({});
  
  App() {
    // If the contents of colors change, then notify that
    // favoriteColor also changes.
    colors.changes.listen((records) {
      notifyProperty(this, const Symbol('favoriteColor'));
    });
  }
  
  String get favoriteColor {
    for (var key in colors.keys) {
      if (colors[key]) {
        return key;
      }
    }
  }
}

main() {
  TemplateElement template = query('#tmpl');
  template.bindingDelegate = new FancySyntax();
  template.model = new App();
}