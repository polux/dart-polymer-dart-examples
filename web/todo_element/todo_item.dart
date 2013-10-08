import 'package:polymer/polymer.dart';
import 'dart:html';
import 'models.dart';

@CustomTag('todo-item')
class TodoItemElement extends PolymerElement {
  @observable Item item;
  
  bool get applyAuthorStyles => true;
  
  void change(Event e, var details, Node target) {
    // For some reason I can't use a name of todo-change, it won't
    // be captured on the declarative handler.
    dispatchEvent(new CustomEvent('todochange'));
  }
}