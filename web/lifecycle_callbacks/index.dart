import 'dart:async';
import 'dart:html';

main() {
  Element elem = query('#elem');
  
  // Continually set the attribute.
  new Timer.periodic(const Duration(seconds:1), (_) {
    elem.attributes['timestamp'] = new DateTime.now().toString();
  });
}