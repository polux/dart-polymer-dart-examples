import 'dart:async';
import 'dart:html';
import 'package:polymer/polymer.dart';

main() {
  initPolymer();
  
  Element elem = querySelector('#elem');
  
  // Continually set the attribute.
  new Timer.periodic(const Duration(seconds:1), (_) {
    elem.attributes['timestamp'] = new DateTime.now().toString();
    scheduleMicrotask(Observable.dirtyCheck);
  });
}