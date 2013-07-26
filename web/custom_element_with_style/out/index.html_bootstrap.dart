library app_bootstrap;

import 'package:polymer/polymer.dart' as polymer;

import 'index.html.dart' as userMain;

import 'index.html_my_test.dart';

void main() {
  userMain.main();
  polymer.setScopedCss('my-test', {".important":"important","#message":"message","my-test":"[is=\"my-test\"]"});
  polymer.registerPolymerElement('my-test', () => new MyTest());
}
