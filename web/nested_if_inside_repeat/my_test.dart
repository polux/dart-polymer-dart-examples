import 'package:polymer/polymer.dart';

@CustomTag('my-test')
class MyTest extends PolymerElement {
  final List fruits = toObservable(['apples', 'oranges', 'pears']);
  
  MyTest.created() : super.created();
}