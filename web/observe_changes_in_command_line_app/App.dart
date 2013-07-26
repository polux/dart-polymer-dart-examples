import 'dart:async';
import 'dart:mirrors';
import 'package:observe/observe.dart';

class App extends Object with ObservableMixin {
  // XXX soon, I can use:
  // @observable int counter = 0;

  int _counter = 0;

  void set counter(int _c) {
    int oldValue = _counter;
    _counter = notifyPropertyChange(const Symbol('counter'), _counter, _c);
  }

  int get counter => _counter;
}

main() {
  App app = new App();
  new Timer.periodic(const Duration(seconds: 1), (t) {
    app.counter++;
  });

  app.changes.listen((List<ChangeRecord> records) {
    ChangeRecord record = records[0];

    // XXX any way to get before and after values?
    // Quick look: no. Have to go through mirrors.

    print('Change from ${record.field}');

    // This is how you get the new (current) value.

    InstanceMirror mirror = reflect(app);
    var fieldValue = mirror.getField(record.field).reflectee;

    print(fieldValue);
  });
}