import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  
  void showMessage(Event e, var detail, Node target) {
  
    // shadowRoot is the root of the internals of the custom element
    
    shadowRoot.query('#show').style.display = 'inline';
    shadowRoot.query('#hide').style.display = 'none';
  }
  
  void hideMessage(Event e, var detail, Node target) {
    print(attributes['id']);
    shadowRoot.query('#show').style.display = 'none';
    shadowRoot.query('#hide').style.display = 'inline';
  }
}