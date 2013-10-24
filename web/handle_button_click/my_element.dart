import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  
  MyElement.created() : super.created();
  
  void showMessage(Event e, var detail, Node target) {
  
    // The $ finds nodes inside the shadow dom
    
    $['show'].style.display = 'inline';
    $['hide'].style.display = 'none';
  }
  
  void hideMessage(Event e, var detail, Node target) {
    $['show'].style.display = 'none';
    $['hide'].style.display = 'inline';
  }
}