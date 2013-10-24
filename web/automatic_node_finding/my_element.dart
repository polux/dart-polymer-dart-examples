import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created() {
    Element insideDiv = $['find-me'];
    insideDiv.text = 'I was set from inside the constructor method';
  }
}