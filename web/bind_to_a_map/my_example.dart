import 'package:polymer/polymer.dart';

@CustomTag('my-example')
class MyExample extends PolymerElement with ObservableMixin {
  @observable Map data = toObservable({'msg': 'Hello, world'});
}