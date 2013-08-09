import 'dart:html';

main() {
  // BUG: https://code.google.com/p/dart/issues/detail?id=11980
  // See bug for a better solution.
  query('#tmpl').model = new Map()
    ..[const Symbol('msg')] = 'world';
}