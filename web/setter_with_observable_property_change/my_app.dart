import 'package:polymer/polymer.dart';
import 'package:meta/meta.dart';
import 'dart:async';

@CustomTag('my-app')
class MyApp extends PolymerElement with ObservableMixin {
  String _time;
  
  String get time => _time;
  
  void set time(String _time) {
    this._time = notifyPropertyChange(const Symbol('time'), this._time, _time);
  }
  
  @override
  void created() {
    super.created();
    new Timer.periodic(const Duration(seconds: 1), (t) {
      time = new DateTime.now().toString();
    });
  }
}