library my_element;

import 'dart:async';
import 'package:polymer/polymer.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement with ObservableMixin {
  @observable
  DateTime timestamp = new DateTime.now();
  
  Timer _timer;
  
  MyElement() {
    bindProperty(this, const Symbol('timestamp'),
        () => notifyProperty(this, const Symbol('second')));
  }
  
  inserted() {
    super.inserted();
    _timer = new Timer.periodic(const Duration(seconds: 1), (_) {
      timestamp = new DateTime.now();
    });
  }
  
  removed() {
    super.removed();
    _timer.cancel();
  }
  
  int get second => timestamp.second;
}