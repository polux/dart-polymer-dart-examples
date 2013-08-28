import 'package:polymer/polymer.dart';

// Custom elements extend PolymerElement.
// You also have to use an annotation to mark what tag this
// belongs to.
@CustomTag("my-jumbotron")
class MyJumbotron extends PolymerElement {
  // custom functionality goes here
  
  // This lets the Bootstrap CSS "bleed through" into the Shadow DOM
  // of this element.
  bool get applyAuthorStyles => true;
}