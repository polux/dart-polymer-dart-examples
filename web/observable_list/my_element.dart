library my_element;

import 'dart:async';
import 'package:polymer/polymer.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement with ObservableMixin {
  List timestamps = toObservable([]); // observe adds/removes to the list
  
  inserted() {
    super.inserted();
    
    new Timer.periodic(const Duration(seconds: 1), (_) {
      timestamps.add(new DateTime.now());
    });
  }
}