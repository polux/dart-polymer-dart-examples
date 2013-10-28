import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';

@CustomTag("my-element")
class MyElement extends PolymerElement {
  final List<String> timestamps = toObservable([]);
  MutationObserver observer;
  
  MyElement.created() : super.created() {
    observer = new MutationObserver(_onMutation);
    observer.observe(shadowRoot.querySelector('#timestamps'), childList: true);
    
    new Timer.periodic(const Duration(seconds: 1), (t) {
      print('timer fired');
      timestamps.add(new DateTime.now().toString());
    });
  }
  
  // TESTING
  DocumentFragment instanceTemplate(Element tmpl) => tmpl.createInstance(this);
  
  // Bindings, like repeat, happen asynchronously. To be notified
  // when the shadow root's tree is modified, use a MutationObserver.
  
  _onMutation(List<MutationRecord> mutations, MutationObserver observer) {
    print('${mutations.length} mutations occurred, the first to ${mutations[0].target}');
  }
}