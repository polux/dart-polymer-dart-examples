import 'package:polymer/polymer.dart';

@CustomTag('my-volume')
class MyVolumeElement extends PolymerElement {
  String _internalSetting;
  
  MyVolumeElement.created() : super.created();
  
  @published String get nob => _internalSetting;
  void set nob(String n) { _internalSetting = n; }
}