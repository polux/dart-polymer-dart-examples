import 'package:polymer/polymer.dart';

@CustomTag('my-toggle')
class ToggleComponent extends PolymerElement with ObservableMixin {
  @observable String state = 'On';
  
  void toggle() {
    if (state == 'On') {
      state = 'Off';
    } else {
      state = 'On';
    }
  }
}
