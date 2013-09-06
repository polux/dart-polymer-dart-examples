library models;

import 'package:polymer/polymer.dart';

class Switch extends Object with ObservableMixin {
  @observable String flipped = 'off';
}