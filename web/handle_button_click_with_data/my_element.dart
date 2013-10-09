import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String message;

  void updateMessage(Event e, var detail, Element target) {
    message = target.attributes['data-msg']; // extract the data- attribute
                                             // and update the
                                             // bound message property
  }
}