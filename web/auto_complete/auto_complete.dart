import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('auto-complete')
class AutoCompleteElement extends PolymerElement with ObservableMixin {
  @observable String search;
  final List<String> results = toObservable([]);
  UListElement dataSource;
  final List<String> haystack = [];
  bool isSelected = false;
  
  void created() {
    super.created();
    
    dataSource = host.query('.data-source') as UListElement;
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
    results.clear();
    isSelected = true;
  }
  
  _performSearch() {
    results.clear();
    if (isSelected) {
      isSelected = false;
      return;
    }
    if (search.trim().isEmpty) return;
    String lower = search.toLowerCase();
    results.addAll(haystack.where((String term) {
      return term.toLowerCase().contains(lower);
    }));
  }
  
  keyup(Event e, var detail, Node target) {
    print(e.keyCode);
    if (new KeyEvent(e).keyCode == KeyCode.ESC) {
      search = '';
      isSelected = true;
    }
  }
}