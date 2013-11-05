library my_element;

import 'package:polymer/polymer.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement {
  
  @observable int counter = 0;
  
  MyElement.created() : super.created();
  
  void increment() {
    counter++;
  }
}