import 'dart:html';
import 'package:mdv/mdv.dart' as mdv;

class Message {
  String msg;
}

main() {
  mdv.initialize();
  
  query('#tmpl').model = 'world';
}