import 'package:polymer/polymer.dart';

// XXX: Must always have a class for every custom element.
// See https://code.google.com/p/dart/issues/detail?id=12254

@CustomTag('my-element')
class MyElement extends PolymerElement { }

@CustomTag('my-child')
class MyChild extends PolymerElement { }