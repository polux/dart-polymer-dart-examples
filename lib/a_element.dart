library a_element;

import 'package:polymer/polymer.dart';

// Custom elements extend PolymerElement.
// Apparently, you also have to use an annotation to mark what tag this
// belongs to.
@CustomTag("a-element")
class AElement extends PolymerElement {
  // custom functionality goes here
  String foo = 'a';
}