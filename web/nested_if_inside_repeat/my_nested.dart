import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('my-nested')
class MyNested extends LIElement with Polymer, Observable {
  @published String fruit;
  
  MyNested.created() : super.created();
}