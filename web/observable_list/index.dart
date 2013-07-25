import 'dart:async';
import 'dart:html';
import 'package:observe/observe.dart';
import 'package:mdv/mdv.dart' as mdv;

main() {
  mdv.initialize();
  
  List timestamps = toObservable([]); // observe adds/removes to the list
  query('#tmpl').model = timestamps;

  new Timer.periodic(const Duration(seconds: 1), (_) {
    timestamps.add(new DateTime.now());
  });
}