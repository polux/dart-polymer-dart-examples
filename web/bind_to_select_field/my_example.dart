import 'package:polymer/polymer.dart';

@CustomTag('my-example')
class MyExample extends PolymerElement with ObservableMixin {
  @observable int selected = 1; // Make sure this is not null.
                                // Set it to the default selection index.
  List fruits = ['apples', 'bananas', 'pears'];
  @observable String value = '';
}