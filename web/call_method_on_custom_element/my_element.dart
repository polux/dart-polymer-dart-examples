library my_element;

import 'package:polymer/polymer.dart';

// Custom elements extend PolymerElement.
// Apparently, you also have to use an annotation to mark what tag this
// belongs to.
@CustomTag("my-element")
class MyElement extends PolymerElement with ObservableMixin {
  // custom functionality goes here
  
  @observable int counter = 0;
  
  void increment() {
    counter++;
  }
}