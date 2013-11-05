library index;

import 'dart:html';
import 'package:polymer/polymer.dart';

main() {
  initPolymer();
  
  querySelector('#add-here').children.add(new Element.tag('my-element'));
}
