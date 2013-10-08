library contacts_view;

import "package:polymer/polymer.dart";
import "dart:html";
import "model.dart";

@CustomTag("contacts-view")
class ContactsView extends PolymerElement {
  @observable ObservableList<Contact> contacts;
  @observable Contact selectedContact;
  
  bool get _hasSelectedContact => selectedContact != null;
  
  void created() {
    super.created();
    
    new PathObserver(this, 'selectedContact').changes.listen((_) {
      notifyProperty(this, const Symbol("_hasSelectedContact"));
    });
    
    // This doesn't work, it wants _hasSelectedContact to have a setter
    //bindProperty(#_hasSelectedContact, this, "selectedContact");
    
    // This was Polymer.dart <= 0.7
//    bindProperty(this, const Symbol("selectedContact"), () =>
//        notifyProperty(this, const Symbol("_hasSelectedContact")));
  }
  
  void add() {
    contacts.add(new Contact());
    selectedContact = contacts.last;
  }
  
  void delete() {
    List<InputElement> checkboxes = getShadowRoot("contacts-view").queryAll("input:checked");
    Iterable<String> ids = checkboxes.map((InputElement checkbox) => checkbox.nextElementSibling.attributes["data-id"]);
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