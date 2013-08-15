import 'dart:html';
import 'package:polymer/polymer.dart';

class App extends Object with ObservableMixin {
  @observable
  bool blue = false;
  @observable
  bool green = false;
  @observable
  bool red = false;
  
  App() {
    bindProperty(this, const Symbol('red'),
        () => notifyProperty(this, const Symbol('favoriteColor')));
    bindProperty(this, const Symbol('green'),
        () => notifyProperty(this, const Symbol('favoriteColor')));
    bindProperty(this, const Symbol('blue'),
        () => notifyProperty(this, const Symbol('favoriteColor')));
  }
  
  String get favoriteColor {
    String value = '';
    if (red) {
      value = 'red';
    } else if (green) {
      value = 'green';
    } else if (blue) {
      value = 'blue';
    }
    return value;
  }
}

main() {
  query('#tmpl').model = new App();
}