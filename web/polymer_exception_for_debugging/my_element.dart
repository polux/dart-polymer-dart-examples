import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created();
  String get value {
    throw 'DOH!';  // On purpose, to test debugging
  }
}