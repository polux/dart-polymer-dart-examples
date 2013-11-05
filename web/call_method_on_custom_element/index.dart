import 'dart:html';
import 'dart:async';
import 'my_element.dart';
import 'package:polymer/polymer.dart';

main() {
  initPolymer();
  
  MyElement myElement = querySelector('#main');
  
  new Timer.periodic(const Duration(seconds: 1), (t) {
    myElement.increment();
    scheduleMicrotask(Observable.dirtyCheck);
  });
}