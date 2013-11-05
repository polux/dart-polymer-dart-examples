import 'dart:async';
import 'dart:mirrors';
import 'package:observe/observe.dart';

class App extends Object with Observable {
  @observable
  int counter = 0;
}

main() {
  App app = new App();
  
  new Timer.periodic(const Duration(seconds: 1), (t) {
    app.counter++;
    
    // Required.
    Observable.dirtyCheck();
  });

  app.changes.listen((List<ChangeRecord> records) {
    print('There was ${records.length} change(s)');
    
    PropertyChangeRecord record = records[0] as PropertyChangeRecord;

    // XXX any way to get before and after values?
    // Quick look: no. Have to go through mirrors.

    print('Change on ${record.field}');

    // This is how you get the new (current) value.

    InstanceMirror mirror = reflect(app);
    var fieldValue = mirror.getField(record.field).reflectee;

    print(fieldValue);
  });

  // Or... if you want easier access to the new value

  new PathObserver(app, 'counter')
      ..bindSync((newValue) => print('counter changed to $newValue'));
}