import 'package:polymer/polymer.dart';

@CustomTag('my-example')
class MyExample extends PolymerElement {
  @observable bool checked = false;
  
  MyExample.created() : super.created();
}