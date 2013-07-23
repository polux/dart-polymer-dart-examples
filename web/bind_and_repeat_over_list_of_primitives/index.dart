import 'dart:html';
import 'package:mdv/mdv.dart' as mdv;

main() {
  mdv.initialize();
  
  List fruits = ['apples', 'oranges', 'pears'];
  
  query('#tmpl').model = fruits;
}