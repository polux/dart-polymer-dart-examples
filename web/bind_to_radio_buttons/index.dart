import 'dart:html';
import 'package:polymer/polymer.dart';

class App extends Object with ObservableMixin {
  @observable
  bool red = false;
  @observable
  bool blue = false;
  @observable
  bool green = false;
  
  @observable
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