import 'package:polymer/component_build.dart';
import 'dart:io';

// Testing: this should eventually produce warnings in the editor
// when I do something wrong.

main() {
  var args = new Options().arguments;
  args.addAll(['--', '--deploy']);
  build(args, ['index.html']);
}