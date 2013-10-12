import 'package:polymer/polymer.dart';
import 'dart:html';

// From https://github.com/hpoul/dart-polymer-dart-examples/tree/master/web/simple_focus_blur
  
@CustomTag('input-focus-test')
class InputFocusTest extends PolymerElement {
  @observable String lastEvent = "None";

  void handleFocus(Event e, var detail, Node target) {
    lastEvent = "focus";
  }
  void handleBlur(Event e, var detail, Node target) {
    lastEvent = "blur";
  }
  void handleKeyDown(Event e, var detail, Node target) {
    lastEvent = "keydown";
  }
}