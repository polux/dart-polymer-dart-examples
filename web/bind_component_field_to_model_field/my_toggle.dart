import 'package:polymer/polymer.dart';

@CustomTag('my-toggle')
class ToggleComponent extends PolymerElement {
  @observable String state = 'On';
  
  ToggleComponent.created() : super.created();
  
  void toggle() {
    if (state == 'On') {
      state = 'Off';
    } else {
      state = 'On';
    }
  }
}
