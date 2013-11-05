import 'package:polymer/polymer.dart' show CustomTag, PolymerElement, observable;
import 'dart:html' show Event, Node;
import 'models.dart' show Count;
import 'ui_filters.dart' show StringToInt;
import 'package:polymer_expressions/filter.dart' show Transformer;

@CustomTag('my-app')
class MyApp extends PolymerElement {
  @observable Count count = new Count();
  
  MyApp.created() : super.created();
  
  void clickMe(Event e, var detail, Node target) {
    print('clicked');
  }
  
  // Filters and transformers can be referenced as fields.
  final Transformer asInteger = new StringToInt();
}
