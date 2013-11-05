import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/polymer_expressions.dart';
import 'package:template_binding/template_binding.dart';
import 'models.dart';
import 'dart:html';

@CustomTag('my-example')
class MyExample extends PolymerElement {

  @observable Person bob;
  
  MyExample.created() : super.created() {
    bob = new Person()
      ..firstName = 'Bob'
      ..lastName = 'Smith'
      ..signedAgreement = true
      ..age = 42
      ..favoriteColors.add(new Color()..name="red"..hex="#FF0000")
        ..favoriteColors.add(new Color()..name="yellow"..hex="#FFFF00")
        ..addresses['home'] = new Address("main st", "smallville")
        ..addresses['work'] = new Address('oak way', 'gotham');
  }
  
  DocumentFragment instanceTemplate(Element template) {
    return templateBind(template).createInstance(this, new PolymerExpressions(globals: {
        'uppercase': (String input) => input.toUpperCase()
      }));
  }
}