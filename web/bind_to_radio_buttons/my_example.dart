import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-example')
class MyExample extends PolymerElement {
  @observable String favoriteColor = '';
  
  MyExample.created() : super.created();
  
  void updateRadios(Event e, var detail, Node target) {
    favoriteColor = (e.target as InputElement).value;
  }

}