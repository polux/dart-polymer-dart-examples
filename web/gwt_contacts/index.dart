import "package:polymer/polymer.dart";
import "dart:html";
import "data_service.dart";

void main() {
  query("#contactsTemplate").model = toObservable(getContacts());
}