import 'package:polymer/polymer.dart';

import 'models.dart';

@CustomTag('my-app')
class MyApp extends PolymerElement {
  final Switch lightSwitch = new Switch();
  
  void turnSwitchOn() {
    lightSwitch.flipped = 'On';
  }
  
  void turnSwitchOff() {
    lightSwitch.flipped = 'Off';
  }
}