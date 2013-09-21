# Polymer.dart Samples and Examples

In which I learn all about [polymer.dart][polymerdart]. Discuss polymer.dart at
web-ui@dartlang.org mailing list. Ask question on Stack Overflow.

## Upgrading from Web UI:

See our tips and tricks for upgrading from
[Web UI to Polymer.dart](https://www.dartlang.org/polymer-dart/upgrading-to-polymer-from-web-ui.html).

## Web UI features that are missing from polymer.dart:

Custom element, custom attribute, values doesn't work:
custom_element_with_custom_attribute_binding
https://code.google.com/p/dart/issues/detail?id=12262

Access to current iteration index:
https://code.google.com/p/dart/issues/detail?id=12666

Two-way binding between model and custom elements:
https://code.google.com/p/dart/issues/detail?id=13152

Entry points in sub-directories:
https://code.google.com/p/dart/issues/detail?id=13185

## Random bugs:

(This is not a complete list of bugs with polymer.dart. Just the bugs that
I ran into. Some of these are feature-compatibility issues with Polymer
JavaScript, others are straight-up bugs. Please don't misinterpret,
polymer.dart might be useable for you in the meantime. It depends on your app.)

conditional_templates:
https://code.google.com/p/dart/issues/detail?id=12687

bind_to_a_map:
Keys must be Symbols. https://code.google.com/p/dart/issues/detail?id=11980

fancy-syntax doesn't support list literals:
https://github.com/dart-lang/fancy-syntax/issues/9

fancy-syntax doesn't seem to support named bindings:
https://github.com/dart-lang/fancy-syntax/issues/24

fancy-syntax map literals in class attribute aren't treating non-null as true:
https://github.com/dart-lang/fancy-syntax/issues/26

Custom element, custom attribute, binding via template doesn't work:
custom_element_with_custom_attribute_binding
http://code.google.com/p/dart/issues/detail?id=12440

Confusion around importing nested components (with boot.js)
https://code.google.com/p/dart/issues/detail?id=12400

Literal attribute values not setting class field.
custom_element_with_custom_attr_with_literal_value
lifecycle_callbacks
https://code.google.com/p/dart/issues/detail?id=12715

Polymer.dart still uses old lifecycle callbacks:
https://code.google.com/p/dart/issues/detail?id=12716

attributeChanged doesn't fire:
https://code.google.com/p/dart/issues/detail?id=12719

on-change stops firing if the input field has a bound value:
https://code.google.com/p/dart/issues/detail?id=12722

polymer.dart compiles to very large JavaScript files:
https://code.google.com/p/dart/issues/detail?id=12730

Names in nested templates aren't working:
nested_templates
https://code.google.com/p/dart/issues/detail?id=12742

Binding to a select value doesn't work (but binding to selectedIndex works)
bind_to_select_field
https://code.google.com/p/dart/issues/detail?id=12779

Unable to compare against the literal `null` in an expression,
when getter first returned a null, and now an int.
e.g.: <template if="{{!numDays}}">  (works with numDays is null, not when is int)

## TODO

* CSS in external file

## Additional authors

This project received help from:

* Nelson Silva <nelson.silva@inevo.pt>
* Chris Buckett <chrisbuckett@gmail.com>
* Richard Griffith <scribe.griff@gmail.com>

[polymerdart]: https://www.dartlang.org/polymer-dart/