library custom_elements_main;

import 'dart:html';
import 'package:dart_polymer_examples/custom_elements.dart';

main() {
  AElement a = query('#a').xtag;
  BElement b = query('#b').xtag;
  print(a.runtimeType);
  print(b.runtimeType);
  print(a is AElement);
  print(b is BElement);
}