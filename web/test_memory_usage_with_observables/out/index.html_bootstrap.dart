library app_bootstrap;

import 'package:polymer/polymer.dart';
import 'dart:mirrors' show currentMirrorSystem;
import 'index.dart' as i0;


void main() {
  initPolymer([
      'index.dart',
    ],
    currentMirrorSystem().findLibrary(const Symbol('app_bootstrap'))
        .first.uri.toString());
}
