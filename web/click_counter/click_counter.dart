import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('click-counter')
class ClickCounterElement extends PolymerElement {
  @published int count = 0;
  
  ClickCounterElement.created() : super.created();
  
  void increment(Event e, var detail, Node target) {
    count += 1;
  }
}