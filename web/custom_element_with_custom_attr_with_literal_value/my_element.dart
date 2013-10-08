import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable @published String volume = '';
  @observable @published int intThing = 0;  // Be sure to initialize
// your non-String fields with a
// default value, so that polymer.dart
// knows how to convert the attribute
// value for you.
  @observable @published bool flag = false;
  @observable @published double doubleThing = 0.0;
}