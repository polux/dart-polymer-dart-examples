// Pulling in elements one-by-one works.

//import 'package:dart_polymer_examples/a_element.dart';
//import 'package:dart_polymer_examples/b_element.dart';

// Or, you can import a shared app that already imported the custom elements.

import 'package:dart_polymer_examples/app_shared.dart' as app;

// Every app needs a main()

main() {
  app.init();
}