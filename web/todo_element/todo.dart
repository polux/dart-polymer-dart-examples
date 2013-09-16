library todo;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'models.dart';

/// The todo-element.
@CustomTag('todo-app')
class TodoElement extends PolymerElement with ObservableMixin {
  final ObservableList<Item> items = toObservable([]);

  TodoElement() {
    // Need to check if the items list gets added to or has something removed.
    items.changes.listen((records) {
      notifyProperty(this, const Symbol('remaining'));
    });
  }
  
  int get remainingCount => items.where((i) => !i.done).length;

  // Apply the styles.
  bool get applyAuthorStyles => true;

  void addTodo(KeyboardEvent e, var detail, Node target) {
    KeyEvent event = new KeyEvent(e);
    if (event.keyCode == KeyCode.ENTER) {
      InputElement newTodo = target as InputElement;
      Item item = new Item(text: newTodo.value, done: false);
      item.changes.listen((_) => notifyProperty(this, const Symbol('remaining')));
      items.add(item);
      newTodo.value = '';
    }
  }
  
  void cancelTodo(Event e, var detail, Node target) {
    KeyEvent event = new KeyEvent(e);
    if (event.keyCode == KeyCode.ESC) {
      (target as InputElement).value = '';
    }
  }

  // Mark all items as done.
  void markAllDone(Event e, var detail, Node target) {
    items.forEach((item) => item.done = true);
  }

  // Archive completed items.
  void archiveDone(Event e, var detail, Node target) {
    items.removeWhere((item) => item.done);
  }
}