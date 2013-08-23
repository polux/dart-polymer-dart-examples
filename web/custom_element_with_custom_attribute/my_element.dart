import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement with ObservableMixin {
  @observable String volume;
}