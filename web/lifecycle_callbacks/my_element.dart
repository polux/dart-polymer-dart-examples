import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement with ObservableMixin {
  @observable String mood;

  void created() {
    // ALWAYS call super's lifecycle method
    super.created();

    print(mood);
  }
}