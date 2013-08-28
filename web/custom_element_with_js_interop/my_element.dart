import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:js/js.dart' as js;

@CustomTag('my-element')
class MyElement extends PolymerElement with ObservableMixin {
  @observable String result;
  
  handleClick(Event e, var detail, Node target) {
    var context = js.context;
    js.scoped(() {
      var hug = new js.Proxy(context.Hug);
      result = hug.embrace(10);
    });
  }
}