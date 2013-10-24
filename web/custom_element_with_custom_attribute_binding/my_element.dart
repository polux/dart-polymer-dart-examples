import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @published String value;
  
  MyElement.created() : super.created();
}