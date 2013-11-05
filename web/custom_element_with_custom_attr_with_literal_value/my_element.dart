import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @published String volume = '';
  @published int intThing = 0;  // Be sure to initialize
// your non-String fields with a
// default value, so that polymer.dart
// knows how to convert the attribute
// value for you.
  @published bool flag = false;
  @published double doubleThing = 0.0;
  
  MyElement.created() : super.created();
}