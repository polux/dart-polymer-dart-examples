import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';

@CustomTag("my-element")
class MyElement extends PolymerElement with ObservableMixin {
  final List<String> timestamps = toObservable([]);
  MutationObserver observer;
  
  created() {
    super.created();
    
    observer = new MutationObserver(_onMutation);
    observer.observe(getShadowRoot('my-element').query('#timestamps'), childList: true, subtree: true);
    
    new Timer.periodic(const Duration(seconds: 1), (t) {
      timestamps.add(new DateTime.now().toString());
    });
  }
  
  // Bindings, like repeat, happen asynchronously. To be notified
  // when the shadow root's tree is modified, use a MutationObserver.
  
  _onMutation(List<MutationRecord> mutations, MutationObserver observer) {
    print('${mutations.length} mutations occurred, the first to ${mutations[0].target}');
  }
}