import 'package:polymer/polymer.dart';

@CustomTag('my-example')
class MyExample extends PolymerElement {
  @observable Map data = toObservable({'msg': 'Hello, world'});
  
  MyExample.created() : super.created();
}