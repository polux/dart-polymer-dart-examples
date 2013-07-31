library app_bootstrap;

import 'package:polymer/polymer.dart';
import 'dart:mirrors' show currentMirrorSystem;

import 'index.dart' as userMain;

import 'my_element.dart' as i0;

void main() {
  initPolymer([
      'my_element.dart',
    ],
    userMain.main,
    currentMirrorSystem().findLibrary(const Symbol('app_bootstrap'))
        .first.uri.toString());
}
