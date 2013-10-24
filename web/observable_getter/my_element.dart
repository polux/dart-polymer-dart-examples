library my_element;

import 'dart:async';
import 'package:polymer/polymer.dart';
import 'package:meta/meta.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement {
  @observable DateTime timestamp = new DateTime.now();
  
  // Instead of a getter, make an observable field, and update
  // that when one of its source fields change.
  // Polymer.dart doesn't have a slick way to mark a getter as
  // observable. But this seems to do nicely.
  @observable int second;
  
  Timer _timer;
  
  MyElement.created() : super.created();
  
  timestampChanged(DateTime oldValue) {
    second = timestamp.second;
  }
  
  @override
  enteredView() {
    super.enteredView();
    _timer = new Timer.periodic(const Duration(seconds: 1), (_) {
      timestamp = new DateTime.now();
    });
  }
  
  @override
  leftView() {
    super.leftView();
    _timer.cancel();
  }
}