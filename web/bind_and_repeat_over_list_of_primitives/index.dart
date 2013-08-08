import 'dart:html';

main() {
  List fruits = ['apples', 'oranges', 'pears'];
  
  query('#tmpl').model = fruits;
}