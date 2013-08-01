import 'dart:html';
import 'package:fancy_syntax/syntax.dart';

main() {
  TemplateElement.syntax['fancy'] = new FancySyntax();
  query('#tmpl').model = '11';
}