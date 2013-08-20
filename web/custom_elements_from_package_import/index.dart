// Pulling in elements one-by-one works.

//import 'package:dart_polymer_examples/a_element.dart';
//import 'package:dart_polymer_examples/b_element.dart';

// Or, you can create a single library that exports each custom
// element.

import 'package:dart_polymer_examples/custom_elements.dart';
import 'package:dart_polymer_examples/custom_elements_main.dart' as ce;
import 'dart:html';

// Every app needs a main()

main() {
  ce.main();
}