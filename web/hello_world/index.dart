import 'dart:html';
import 'package:mdv/mdv.dart' as mdv;

class Message {
  String msg;
}

main() {
  mdv.initialize();
  
  var msg = new Message()..msg = 'world';
  query('#tmpl').model = msg;
}