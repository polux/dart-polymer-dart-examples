import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List favoriteColors = toObservable(['red', 'blue']);
  @observable String company; // null
  @observable String firstName = 'Bob';
  
  MyElement.created() : super.created();
}