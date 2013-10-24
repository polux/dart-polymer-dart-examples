import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:meta/meta.dart';

// Custom elements extend PolymerElement.
// You also have to use an annotation to mark what tag this
// belongs to.
@CustomTag("my-element")
class MyElement extends PolymerElement {
  @observable String hello = 'Hi from data binding';
  
  MyElement.created() : super.created();
  
  /**
   * Test to see if we can use all the bits of polymer except the shadow
   * root, which can confuse some CSS frameworks.
   */
  @override
  Node shadowFromTemplate(Element template) {
    var dom = instanceTemplate(template);
    append(dom);
    shadowRootReady(this, template);
    return null; // no shadow here, it's all bright and shiny
  }
}