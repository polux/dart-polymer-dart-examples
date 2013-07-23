import 'dart:html';
import 'package:mdv/mdv.dart' as mdv;

main() {
  mdv.initialize();
  
  // BUG: https://code.google.com/p/dart/issues/detail?id=11980
  // See bug for a better solution.
  query('#tmpl').model = new Map()
    ..[const Symbol('msg')] = 'world';
}