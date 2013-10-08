library model;

import "package:polymer/polymer.dart";

class Contact extends Object with ObservableMixin {
  @observable String id;
  @observable String firstName;
  @observable String lastName;
  @observable String emailAddress;
  
  Contact([this.id = "", this.firstName = "", this.lastName = "",
      String this.emailAddress = ""]);
  
  Contact.copy(Contact contact) {
    if (contact == null) throw new ArgumentError('contact must not be null');
    id = contact.id;
    firstName = contact.firstName;
    lastName = contact.lastName;
    emailAddress = contact.emailAddress;
  }
  
  String get name => "$firstName $lastName";
  
  bool get isEmpty => id.isEmpty && firstName.isEmpty &&
      lastName.isEmpty && emailAddress.isEmpty;
}