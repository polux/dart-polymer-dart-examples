import 'dart:html';
import 'dart:async';

class Message {
  String msg;
}

main() {
  Message message = new Message()..msg = 'world';
  TemplateElement template = query('#tmpl');
  TemplateElement ifTemplate = query('#tmpl2');
  
  
  new Timer.periodic(const Duration(seconds: 1), (_) {
    if (!template.bindings.isEmpty) {
      template.unbindAll();
      ifTemplate.model = false;
    } else {
      template.model = message;
      ifTemplate.model = true;
    }    
  });
  
}