# Polymer.dart Samples and Examples

In which I learn all about [polymer.dart][polymerdart]. Discuss polymer.dart at
web-ui@dartlang.org mailing list. Ask question on Stack Overflow.

## Upgrading from Web UI:

See our tips and tricks for upgrading from
[Web UI to Polymer.dart](https://www.dartlang.org/polymer-dart/upgrading-to-polymer-from-web-ui.html).

## Things to try with new Polymer.dart

* Use `fooChanged(oldValue) { ... }` to add a convenient observer for your property "foo" - Confirmed!
* attributeChanged lifecycle method is now implemented - Confirmed!
* external stylesheets in the template like `<link rel=stylesheet ...>` should work
* customize your custom element's creation, for example, it's easy to create one without a ShadowRoot if you want
* generally: there are a lot of methods you can override to customize your polymer-element's behavior
* polymer-elements without template or without script tag (using "noscript" attribute) should work - Confirmed!
* attributes and properties are automatically bound in both directions
* bugs where event delivery wasn't happening has been fixed
* registration of a subclass waits for its superclass
* bindProperty now an method on PolymerElement, and makes it easy to create a 2-way binding to another model
* convenience methods such as fire/asyncFire (for custom events)
* No more need for `extends PolymerElement with ObservableMixin`, just extend PolymerElement - Confirmed!
* Use @published on fields that should be used for attributes (don't need the attributes attribute) - Confirmed!

## Web UI features that are missing from polymer.dart:

Access to current iteration index:
https://code.google.com/p/dart/issues/detail?id=12666

## Random bugs:

(This is not a complete list of bugs with polymer.dart. Just the bugs that
I ran into. Some of these are feature-compatibility issues with Polymer
JavaScript, others are straight-up bugs. Please don't misinterpret,
polymer.dart might be useable for you in the meantime. It depends on your app.)

See the full list of [Polymer.dart issues](http://goo.gl/n5kTC3) if interested.

PolymerExpressions doesn't support list literals:
https://github.com/dart-lang/fancy-syntax/issues/9

PolymerExpressions doesn't seem to support named bindings:
https://github.com/dart-lang/fancy-syntax/issues/24

PolymerExpressions map literals in class attribute aren't treating non-null as true:
https://github.com/dart-lang/fancy-syntax/issues/26

Confusion around importing nested components (with boot.js)
https://code.google.com/p/dart/issues/detail?id=12400

Polymer.dart still uses old lifecycle callbacks:
https://code.google.com/p/dart/issues/detail?id=12716

on-change stops firing if the input field has a bound value:
handle_text_field_change
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

Radio buttons not un-setting.
bind_to_radio_buttons
https://code.google.com/p/dart/issues/detail?id=13478
(In the meantime, see bind_to_radio_buttons for workaround.)

## TODO

* CSS in external file

## Additional authors

This project received help from:

* Nelson Silva <nelson.silva@inevo.pt>
* Chris Buckett <chrisbuckett@gmail.com>
* Richard Griffith <scribe.griff@gmail.com>
* Gabor Szabo <szgabsz91@gmail.com>

[polymerdart]: https://www.dartlang.org/polymer-dart/