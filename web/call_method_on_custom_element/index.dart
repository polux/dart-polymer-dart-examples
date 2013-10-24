import 'dart:html';
import 'dart:async';
import 'my_element.dart';

main() {
  MyElement myElement = querySelector('#main');
  
  new Timer.periodic(const Duration(seconds: 1), (t) {
    myElement.increment();
  });
}