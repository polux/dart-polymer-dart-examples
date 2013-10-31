import 'package:polymer/polymer.dart';
import 'dart:html';
import 'models.dart';
import 'ui_filters.dart';

@CustomTag('my-app')
class MyApp extends PolymerElement {
  @observable Count count = new Count();
  
  MyApp.created() : super.created();
  
  void clickMe(Event e, var detail, Node target) {
    print('clicked');
  }
  
  // Filters and transformers can be referenced as fields.
  final asInteger = new StringToInt();
}
