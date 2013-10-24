library models;

// Waiting on bug https://code.google.com/p/dart/issues/detail?id=13849
//import 'package:polymer/polymer.dart'
//show ObservableMixin, observable, bindProperty, notifyProperty;

import 'package:polymer/polymer.dart';

/// The Item class represents an item in the Todo list.
class Item extends Object with Observable {
  @observable String text = '';
  @observable bool done = false;
  
  @observable String doneClass = '';

  Item({this.text: '', this.done: false}) {
    // Monitor the done boolean to add/remove done class.
    
    onPropertyChange(this, #done, () {
      doneClass = _doneClass;
    });
  }

  // Check if item text is empty.
  bool get isEmpty => text.isEmpty;

  // Apply a done class for completed items.
  String get _doneClass => done ? 'done' : '';
}