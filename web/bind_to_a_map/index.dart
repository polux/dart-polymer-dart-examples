import 'dart:html';
import 'package:mdv/mdv.dart' as mdv;

main() {
  mdv.initialize();
  
  // See https://code.google.com/p/dart/issues/detail?id=11980
  // for a better solution.
  query('#tmpl').model = new Map()
    ..[const Symbol('msg')] = 'world';
}