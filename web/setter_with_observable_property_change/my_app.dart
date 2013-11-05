import 'package:polymer/polymer.dart';
import 'dart:async';

@CustomTag('my-app')
class MyApp extends PolymerElement {
  String _time;
  
  String get time => _time;
  
  void set time(String newTime) {
    _time = notifyPropertyChange(#time, _time, newTime);
  }
  
  MyApp.created() : super.created() {
    new Timer.periodic(const Duration(seconds: 1), (t) {
      time = new DateTime.now().toString();
    });
  }
}