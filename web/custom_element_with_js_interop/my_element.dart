import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:js' as js;

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String result;
  
  MyElement.created() : super.created();
  
  handleClick(Event e, var detail, Node target) {
    var hug = new js.JsObject(js.context['Hug']);
    result = hug.callMethod('embrace', [10]);
  }
}