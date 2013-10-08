import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';
import 'dart:json' as json;
import 'package:meta/meta.dart';

@CustomTag('codelab-localstorage')
class CodelabLocalstorage extends PolymerElement {
  @observable String name;
  @observable var value;
  @observable bool useRaw = false;
  
  @observable bool loaded = false;
  
  // Because we don't have attr-changed helpers like polymer.js,
  // setup a watcher by hand
  
  void created() {
    super.created();
    
    new PathObserver(this, 'value').changes.listen((_) {
      if (loaded) {
        save();
      }
    });
  }
  
  valueChanged() {
    if (loaded) {
      save();
    }
  }
  
  // TODO: the name of this method will change to enteredView at some point.
  @override
  void inserted() {
    super.inserted();
    print('codelab-localstorage inserted');
    
    // let the bindings complete, so run this async
    // TODO: should we use runAsync here?
    Timer.run(load);
  }
  
  void save() {
    window.localStorage[name] = useRaw ? value : json.stringify(this.value);
  }
  
  void load() {
    var s = window.localStorage[name];
    if (s != null && !useRaw) {
      try {
        value = json.parse(s);
      } catch (x) {
        value = s;
      }
    } else {
      value = s;
    }
    loaded = true;
    //this.asyncFire('polymer-localstorage-load');
  }
}