library my_element;

import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created() {
    
    // NOTE this only fires once,
    // see https://groups.google.com/forum/#!topic/polymer-dev/llfRAC_cMIo
    // This is useful for waiting for a node to change in response
    // to some data change. Since we don't know when the node will
    // change, we can use onMutation.
    onMutation($['list']).then((List<MutationRecord> records) {
      $['out'].text = 'Change detected at ${new DateTime.now()}';
    });
    
    new Timer(const Duration(seconds:1), () {
      $['list'].children.add(new LIElement()..text='hello from timer');
    });
  }
}