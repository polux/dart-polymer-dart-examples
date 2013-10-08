import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String volume = '';
  @observable int intThing = 0;  // Be sure to initialize
// your non-String fields with a
// default value, so that polymer.dart
// knows how to convert the attribute
// value for you.
  @observable bool flag = false;
  @observable double doubleThing = 0.0;
}