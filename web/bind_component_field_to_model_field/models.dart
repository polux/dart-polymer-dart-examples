library models;

import 'package:polymer/polymer.dart';

class Switch extends Object with Observable {
  @observable String flipped = 'off';
}