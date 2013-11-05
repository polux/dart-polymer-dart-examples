import 'package:polymer/polymer.dart';

@CustomTag('x-c')
class C extends PolymerElement {
  @published String type = '';
  
  C.created() : super.created();
}

@CustomTag('x-b')
class B extends PolymerElement {
  @published String type = '';
  @published int number = 0;
  
  B.created() : super.created();
}

@CustomTag('x-a')
class A extends PolymerElement {
  @observable String type = 'From A';
  
  @observable int originalNumber = 42;
  
  A.created() : super.created();
}