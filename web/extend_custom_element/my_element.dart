library my_element;

import 'package:polymer/polymer.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement {
  
  MyElement.created() : super.created() {
    print('my-element created');
  }
}