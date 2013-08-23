import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  String get value {
    throw 'DOH!';  // On purpose, to test debugging
  }
}