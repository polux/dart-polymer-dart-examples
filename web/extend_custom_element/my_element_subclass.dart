import 'package:polymer/polymer.dart';
import 'my_element.dart';

@CustomTag("my-element-subclass")
class MyElementSubclass extends MyElement {
  
  MyElementSubclass.created() : super.created() {
    print('my-element-subclass is created');
  }
}