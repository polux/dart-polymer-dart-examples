import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('todo-input')
class TodoInputElement extends PolymerElement with ObservableMixin {
  void keypress(KeyboardEvent e, var detail, Node target) {
    KeyEvent event = new KeyEvent(e);
    if (event.keyCode == KeyCode.ENTER) {
      dispatchEvent(new CustomEvent('todo-input-commit'));
    }
  }
  
  void keyup(Event e, var detail, Node target) {
    KeyEvent event = new KeyEvent(e);
    if (event.keyCode == KeyCode.ESC) {
      dispatchEvent(new CustomEvent('todo-input-cancel'));
    }
  }
}