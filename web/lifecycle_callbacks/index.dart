import 'dart:async';
import 'dart:html';

main() {
  var elem = query('#elem');
  
  // Continually set the attribute.
  new Timer.periodic(const Duration(seconds:1), (timer) {
    elem.attributes['timestamp'] = new DateTime.now().toString();
  });
}