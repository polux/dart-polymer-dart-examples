library models;

import 'package:polymer/polymer.dart';

class Count extends Observable {
  @observable int count = 0;
  
  Count() {
    onPropertyChange(this, #count, () {
      print('count is a ${count.runtimeType} with value $count');
    });
  }
}