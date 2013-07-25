library app_bootstrap;

import 'package:polymer/polymer.dart' as polymer;

import 'index.dart' as userMain;

import 'my_element.html.dart';

void main() {
  userMain.main();
  polymer.setScopedCss('my-element', {".important":"important","#message":"message","my-element":"[is=\"my-element\"]"});
  polymer.registerPolymerElement('my-element', () => new MyElement());
}
