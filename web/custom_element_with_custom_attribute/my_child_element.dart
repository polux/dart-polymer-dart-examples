library my_child;

import 'package:polymer/polymer.dart';

@CustomTag('my-child-element')
class MyChildElement extends PolymerElement {
  @published String camelCase;
  
  MyChildElement.created() : super.created();
}