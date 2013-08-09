import 'dart:html';

class Message {
  String msg;
}

main() {
  var message = new Message()..msg = 'world';
  query('#tmpl').model = message;
}