import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('fancy-button')
class FancyButton extends ButtonElement with Polymer, Observable {
  FancyButton.created() : super.created();
}