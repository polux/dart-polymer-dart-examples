import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/polymer_expressions.dart';
import 'package:template_binding/template_binding.dart';
import 'dart:html';
import 'models.dart';
import 'ui_filters.dart';

@CustomTag('my-app')
class MyApp extends PolymerElement {
  @observable Count count = new Count();
  
  MyApp.created() : super.created();
  
  DocumentFragment instanceTemplate(Element template) {
    return templateBind(template).createInstance(this, new PolymerExpressions(globals: {
        'integer': new StringToInt()
      }));
  }
  
  void clickMe(Event e, var detail, Node target) {
    print('clicked');
  }
}