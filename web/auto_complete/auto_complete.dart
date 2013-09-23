import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('auto-complete')
class AutoCompleteElement extends PolymerElement with ObservableMixin {
  @observable String search;
  final List<String> results = toObservable([]);
  final List<String> haystack = [];
  bool skipSearch = false;
  int keyboardSelect = -1;
  
  void created() {
    super.created();
    
    UListElement dataSource = host.query('.data-source') as UListElement;
    if (dataSource == null) {
      print("WARNING: expected to find a .data-source <ul> as a child");
      return;
    }
    
    dataSource.children.forEach((LIElement e) {
      if (e is! LIElement) return;
      haystack.add(e.text);
    });
    
    bindProperty(this, const Symbol('search'), _performSearch);
  }
  
  void select(Event e, var detail, Node target) {
    search = target.text;
    _reset();
    skipSearch = true;
  }
  
  _performSearch() {
    if (skipSearch) {
      skipSearch = false;
      return;
    }
    results.clear();
    if (search.trim().isEmpty) return;
    String lower = search.toLowerCase();
    results.addAll(haystack.where((String term) {
      return term.toLowerCase().startsWith(lower);
    }));
  }
  
  keyup(KeyboardEvent e, var detail, Node target) {
    switch (new KeyEvent(e).keyCode) {
      case KeyCode.ESC:
        _clear();
        break;
      case KeyCode.UP:
        _moveUp();
        break;
      case KeyCode.DOWN:
        _moveDown();
        break;
      case KeyCode.ENTER:
        _select();
        break;
    }
  }
  
  _moveDown() {
    List<Element> lis = shadowRoot.queryAll('ul li');
    if (keyboardSelect >= 0) lis[keyboardSelect].classes.remove('selecting');
    keyboardSelect = ++keyboardSelect == lis.length ? 0 : keyboardSelect;
    lis[keyboardSelect].classes.add('selecting');
  }
  
  _moveUp() {
    List<Element> lis = shadowRoot.queryAll('ul li');
    if (keyboardSelect >= 0) lis[keyboardSelect].classes.remove('selecting');
    if (keyboardSelect == -1) keyboardSelect = lis.length;
    keyboardSelect = --keyboardSelect == -1 ? lis.length-1 : keyboardSelect;
    lis[keyboardSelect].classes.add('selecting');
  }
  
  _clear() {
    _reset();
    search = '';
    skipSearch = true;
  }
  
  _select() {
    List<Element> lis = shadowRoot.queryAll('ul li');
    search = lis[keyboardSelect].text;
    skipSearch = true;
    _reset();
  }
  
  _reset() {
    keyboardSelect = -1;
    results.clear();
  }
}