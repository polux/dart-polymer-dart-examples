import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  
  @observable String thing;
  
  MyElement.created() : super.created();
  
  void handleChange(Event e, var detail, Node target) {
    print((e.target as InputElement).value);
  }
}