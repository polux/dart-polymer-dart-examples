import 'dart:html';
import 'package:polymer/polymer.dart';

main() {
  query('#add-here').children.add(createElement('my-element'));
}
