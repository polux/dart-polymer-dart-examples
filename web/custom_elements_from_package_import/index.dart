import 'package:dart_polymer_examples/a_element.dart';
import 'package:dart_polymer_examples/b_element.dart';
import 'dart:html';

// In this case, we're empty. Every app needs a main function.
// You could put this inline in index.html.

main() {
  AElement a = query('#a').xtag;
  BElement b = query('#b').xtag;
  
  print(a is AElement);
  print(b is BElement);
}