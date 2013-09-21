library data_service;

import "model.dart";

List<String> _contactsFirstNameData = [
  "Hollie", "Emerson", "Healy", "Brigitte", "Elba", "Claudio",
  "Dena", "Christina", "Gail", "Orville", "Rae", "Mildred",
  "Candice", "Louise", "Emilio", "Geneva", "Heriberto", "Bulrush",
  "Abigail", "Chad", "Terry", "Bell"
];

List<String> _contactsLastNameData = [
  "Voss", "Milton", "Colette", "Cobb", "Lockhart", "Engle",
  "Pacheco", "Blake", "Horton", "Daniel", "Childers", "Starnes",
  "Carson", "Kelchner", "Hutchinson", "Underwood", "Rush", "Bouchard",
  "Louis", "Andrews", "English", "Snedden"
];

List<String> _contactsEmailData = [
  "mark@example.com", "hollie@example.com", "boticario@example.com",
  "emerson@example.com", "healy@example.com", "brigitte@example.com",
  "elba@example.com", "claudio@example.com", "dena@example.com",
  "brasilsp@example.com", "parker@example.com", "derbvktqsr@example.com",
  "qetlyxxogg@example.com", "antenas_sul@example.com",
  "cblake@example.com", "gailh@example.com", "orville@example.com",
  "post_master@example.com", "rchilders@example.com", "buster@example.com",
  "user31065@example.com", "ftsgeolbx@example.com"
];

List<Contact> getContacts() {
  List<Contact> result = [];
  
  for (int i = 0; i < _contactsFirstNameData.length; ++i) {
    result.add(new Contact(i.toString(), _contactsFirstNameData[i],
        _contactsLastNameData[i], _contactsEmailData[i]));
  }
  
  return result;
}