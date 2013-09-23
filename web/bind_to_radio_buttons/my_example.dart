import 'package:polymer/polymer.dart';

@CustomTag('my-example')
class MyExample extends PolymerElement with ObservableMixin {
  @observable bool blue = false;
  @observable bool green = false;
  @observable bool red = false;
  
  MyExample() {
    bindProperty(this, const Symbol('red'), () {
        if (red) {
          green = false;
          blue = false;
        }
        notifyProperty(this, const Symbol('favoriteColor'));
      });
    bindProperty(this, const Symbol('green'), () {
        if (green) {
          red = false;
          blue = false;
        }
        notifyProperty(this, const Symbol('favoriteColor'));
      });
    bindProperty(this, const Symbol('blue'), () {
        if (blue) {
          red = false;
          green = false;
        }
        notifyProperty(this, const Symbol('favoriteColor'));
      });
  }
  
  String get favoriteColor {
    String value = '';
    if (red) {
      value = 'red';
    } else if (green) {
      value = 'green';
    } else if (blue) {
      value = 'blue';
    }
    return value;
  }
}