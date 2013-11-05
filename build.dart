#!/usr/bin/env dart
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:polymer/builder.dart';

void main() {
  build(entryPoints: ['web/simple_custom_element_with_script/index.html', 'web/todo_element/index.html']);
}