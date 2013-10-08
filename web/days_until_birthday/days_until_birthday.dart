import 'package:polymer/polymer.dart';

@CustomTag('days-until-birthday')
class DaysUntilBirthdayElement extends PolymerElement {
  @observable String birthday;
  
  created() {
    super.created();
    
    // When birthday changes, signal that numDays changes.
    bindProperty(#numDays, this, 'birthday');
  }
  
  int get numDays {
    if (birthday == null) {
      return null;
    } else {
      return DateTime.parse(birthday).difference(new DateTime.now()).inDays;
    }
  }
}