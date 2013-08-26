import 'package:polymer/polymer.dart';
import 'dart:html';

// Custom elements extend PolymerElement.
// You also have to use an annotation to mark what tag this
// belongs to.
@CustomTag("my-element")
class MyElement extends PolymerElement {
  void created() {
    super.created();
    
    // Access the host element to add nodes to the "light" DOM

    host.children.add(new Element.html('<p>CREATED: Hello from the light DOM</p>'));
    
    // Copy out children from the Shadown DOM and insert into the host.
    // NOTE: only for illustration, not implying you should do this.
    
    Node shadow = shadowRoot.children.first.clone(true);
    host.children.add(shadow);
  }
}