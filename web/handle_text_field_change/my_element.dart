import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-element')
class MyElement extends PolymerElement with ObservableMixin {
  
  @observable String thing;
  
  void handleChange(Event e, var detail, Node target) {
    print((e.target as InputElement).value);
  }
}