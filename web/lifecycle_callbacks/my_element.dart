import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable bool isCreated = false;
  @observable bool isEntered = false;
  @observable bool isLeft = false;
  @observable bool isAttributeChanged = false;
  
  @published String timestamp;

  // The following two callbacks should be stable.
  
  MyElement.created() : super.created() {
    isCreated = true;
  }
  
  @override
  void attributeChanged(String attrName, String oldVal, String newVal) {
    super.attributeChanged(attrName, oldVal, newVal);
    isAttributeChanged = true;
  }
  
  @override
  void enteredView() {
    super.enteredView();

    isEntered = true;
  }

  @override
  void leftView() {
    super.leftView();

    isLeft = false;
  }

}