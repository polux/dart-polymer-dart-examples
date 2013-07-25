import 'dart:async';
import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:observe/observe.dart';
import 'package:mdv/mdv.dart' as mdv;

main() {
  mdv.initialize();
  
  List timestamps = toObservable([]);
  query('#tmpl').model = timestamps;
  
  new Timer.periodic(const Duration(seconds: 1), (_) {
    timestamps.add(new DateTime.now());
  });
}