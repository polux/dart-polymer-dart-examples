import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @published String volume;
  @published String myCamelCase;
}