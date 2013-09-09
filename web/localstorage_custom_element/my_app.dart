import 'package:polymer/polymer.dart';

@CustomTag('my-app')
class MyApp extends PolymerElement with ObservableMixin {
  @observable String value;
}