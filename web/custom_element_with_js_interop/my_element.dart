import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:js/js.dart' as js;

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String result;
  
  MyElement.created() : super.created();
  
  handleClick(Event e, var detail, Node target) {
    var context = js.context;
    js.scoped(() {
      var hug = new js.Proxy(context.Hug);
      result = hug.embrace(10);
    });
  }
}