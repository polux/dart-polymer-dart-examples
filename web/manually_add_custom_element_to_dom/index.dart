import 'dart:html';

main() {

  // BUG: doesn't work
  // https://code.google.com/p/dart/issues/detail?id=12089
  
  query('#add-here').children.add(new Element.html('<my-element></my-element>'));
}
