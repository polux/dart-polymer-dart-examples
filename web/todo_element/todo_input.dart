import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('todo-input')
class TodoInputElement extends InputElement with Polymer, Observable {
  TodoInputElement.created() : super.created();
  
  void keypress(KeyboardEvent e, var detail, Node target) {
    KeyEvent event = new KeyEvent.wrap(e);
    if (event.keyCode == KeyCode.ENTER) {
      dispatchEvent(new CustomEvent('todo-input-commit'));
    }
  }
  
  void keyup(KeyboardEvent e, var detail, Node target) {
    KeyEvent event = new KeyEvent.wrap(e);
    if (event.keyCode == KeyCode.ESC) {
      dispatchEvent(new CustomEvent('todo-input-cancel'));
    }
  }
}