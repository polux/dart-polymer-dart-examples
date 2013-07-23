import 'dart:html';
import 'package:mdv/mdv.dart' as mdv;
import 'dart:async';

class Message {
  String msg;
}

main() {
  mdv.initialize();
  
  var message = new Message()..msg = 'world';
  var template = query('#tmpl');
  
  new Timer.periodic(const Duration(seconds: 1), (_) {
    if (template.model != null) {
      template.model = null;
    } else {
      template.model = message;
    }
  });
  
}