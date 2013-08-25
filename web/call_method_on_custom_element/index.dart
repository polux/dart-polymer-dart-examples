import 'dart:html';
import 'dart:async';
import 'my_element.dart';

main() {
  Element elem = query('#main');
  MyElement myElement = elem.xtag; // Get to the custom element via xtag
  
  new Timer.periodic(const Duration(seconds: 1), (t) {
    myElement.increment();
  });
}