library contacts_app;

import "package:polymer/polymer.dart";
import "dart:html";
import "model.dart";

@CustomTag("contacts-view")
class ContactsView extends PolymerElement with ObservableMixin {
  @observable ObservableList<Contact> contacts;
  @observable Contact selectedContact;
  
  bool get _hasSelectedContact => selectedContact != null;
  
  void created() {
    super.created();
    
    bindProperty(this, const Symbol("selectedContact"), () =>
        notifyProperty(this, const Symbol("_hasSelectedContact")));
  }
  
  void add() {
    contacts.add(new Contact.empty());
    selectedContact = contacts.last;
  }
  
  void delete() {
    var checkboxes = getShadowRoot("contacts-view").queryAll("input:checked");
    var ids = checkboxes.map((InputElement checkbox) => checkbox.nextElementSibling.attributes["data-id"]);
    contacts.removeWhere((Contact contact) => ids.contains(contact.id));
  }
  
  void selectContact(MouseEvent event, var detail, SpanElement target) {
    String id = target.attributes["data-id"];
    selectedContact = contacts.firstWhere((Contact contact) => contact.id == id);
  }
  
  void editReady(CustomEvent event, bool canceled) {
    if (canceled && selectedContact.isEmpty) {
      contacts.remove(selectedContact);
    }
    
    selectedContact = null;
  }
}