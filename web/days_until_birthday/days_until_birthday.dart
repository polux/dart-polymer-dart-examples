import 'package:polymer/polymer.dart';

@CustomTag('days-until-birthday')
class DaysUntilBirthdayElement extends PolymerElement {
  @observable String birthday;
  @observable int numDays = -1;
  
  DaysUntilBirthdayElement.created() : super.created() {
    
    // When birthday changes, signal that numDays changes.
    onPropertyChange(this, #birthday, () {
      if (birthday != null) {
        numDays = _numDays;
      }
    });
  }
  
  int get _numDays {
    if (birthday == null) {
      return null;
    } else {
      return DateTime.parse(birthday).difference(new DateTime.now()).inDays;
    }
  }
}