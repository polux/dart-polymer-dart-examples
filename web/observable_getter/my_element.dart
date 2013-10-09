library my_element;

import 'dart:async';
import 'package:polymer/polymer.dart';
import 'package:meta/meta.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement {
  @observable
  DateTime timestamp = new DateTime.now();
  
  Timer _timer;
  
  @override
  created() {
    super.created();
    // TODO: find out why second needs to have a setter
    //bindProperty(#second, this, 'timestamp');
  }
  
  timestampChanged(DateTime oldValue) {
    notifyProperty(this, #second);
  }
  
  @override
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