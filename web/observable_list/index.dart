import 'dart:async';
import 'dart:html';
import 'package:observe/observe.dart';

main() {
  List timestamps = toObservable([]); // observe adds/removes to the list
  query('#tmpl').model = timestamps;

  new Timer.periodic(const Duration(seconds: 1), (_) {
    timestamps.add(new DateTime.now());
  });
}