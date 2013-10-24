library my_element;

import 'dart:async';
import 'package:polymer/polymer.dart';
import 'package:meta/meta.dart';

@CustomTag("my-element")
class MyElement extends PolymerElement {
  List timestamps = toObservable([]); // observe adds/removes to the list
  
  MyElement.created() : super.created();
  
  @override
  enteredView() {
    super.enteredView();
    
    new Timer.periodic(const Duration(seconds: 1), (_) {
      timestamps.add(new DateTime.now());
    });
  }
}