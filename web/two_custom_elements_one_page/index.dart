import 'a_element.dart';
import 'b_element.dart';
import 'dart:html';

main() {
  AElement a = query('#a').xtag;
  BElement b = query('#b').xtag;
  
  print(a is AElement);
  print(b is BElement);
}
