library custom_elements_main;

import 'dart:html';
import 'package:dart_polymer_examples/custom_elements.dart';

// Let's pretend this is an app available to anyone. They can just import
// it and call its init().

init() {
  AElement a = querySelector('#a');
  BElement b = querySelector('#b');
  print(a.runtimeType);
  print(b.runtimeType);
  print(a is AElement);
  print(b is BElement);
}