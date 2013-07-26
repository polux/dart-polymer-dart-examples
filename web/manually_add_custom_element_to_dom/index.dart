import 'dart:html';
import 'dart:async';
import 'my_element.dart';

main() {
  Element container = query('#add-here');

  // Just creating an HTML tag and insert it into the page. Amazing!
  container.children.add(new Element.html('<div is="my-element">'));

  // Or, construct a new instance. When running in main(),
  // you need to do this after main() is finished running.

  runAsync(() {
    print('inside run async');
    Element host = new Element.html('<div is="my-element">');
    MyElement myElement = new MyElement()
      ..host = host
      ..created();

    container.children.add(host);
    myElement.inserted();
  });

}