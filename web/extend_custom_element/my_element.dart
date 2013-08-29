library my_element;

import 'package:polymer/polymer.dart';

// Custom elements extend PolymerElement.
// You also have to use an annotation to mark what tag this
// belongs to.
@CustomTag("my-element")
class MyElement extends PolymerElement {
  // custom functionality goes here
  
  created() {
    super.created();
    
    print('my-element created');
  }
}