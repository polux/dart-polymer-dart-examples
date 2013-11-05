import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  
  final List itemList = toObservable([]);
  
  MyElement.created() : super.created() {
    itemList.addAll([
      {'key': 'value1', 'MyCaseSensitiveKey': 'hi from MyCaseSensitiveKey 1'},
      {'key': 'value2', 'MyCaseSensitiveKey': 'hi from MyCaseSensitiveKey 2'}
    ]);
  }
}