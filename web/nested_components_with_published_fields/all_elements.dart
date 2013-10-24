import 'package:polymer/polymer.dart';

@CustomTag('x-c')
class C extends PolymerElement {
  @published String type = '';
  
  C.created() : super.created();
}

@CustomTag('x-b')
class B extends PolymerElement {
  @published String type = '';
  
  B.created() : super.created();
}

@CustomTag('x-a')
class A extends PolymerElement {
  @observable String type = 'From A';
  
  A.created() : super.created();
}