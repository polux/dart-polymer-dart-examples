# Polymer.dart Samples and Examples

In which I learn all about polymer.dart. Discuss polymer.dart at
web-ui@dartlang.org mailing list. Ask question on Stack Overflow.

Docs that I found useful:

Binding, conditionals:
: https://github.com/Polymer/mdv/blob/stable/docs/template.md

## General notes:

* Use `<polymer-element>` instead of `<element>`

* Declarative event binding requires custom elements.

* If you use an `if` attribute on your template, the `bind` attribute
  is optional.
  
* Go through `shadowRoot` to find nodes inside of your custom element.

* When manually observing an object, the ChangeRecord only has the field name.
  Not the old and new value. You have to use mirrors to get the new value.

* You should include packages/polymer/boot.js and *NOT* dart.js.

* boot.js **must** go into the `<head>` and not the `<body>`
  
* Custom tag classes now need @CustomTag('element-name'). There's another
  way, but to limit confusion, I won't mention it here. :)
  
* The constructor attribute on <polymer-element> is no longer used.

* Null is falsey for MDV if expressions.

* Calling `mdv.initialize()` is NOT required with boot.js.

* Every custom element must have a Dart class. Use an empty Dart class
  if necessary. See https://code.google.com/p/dart/issues/detail?id=12254
  If you really don't want to create an empty class, use the
  `registerPolymerElement('my-element', () => new PolymerElement())`
  technique.
  
* The `extends` attribute on polymer-element is optional. If you use it,
  you should use the form of `<div is="my-element">`. If you omit the
  `extends` attribute, you are safe to use `<my-element>`.
  
* Getters are no longer observable. Instead, use bindProperty
  to let the system know that a getter should be read. See observable_getter.

* You **must** call `super` in your `created`/`inserted` lifecycle callbacks.

* Polymer.dart does **not** support polymer.js's `noscript` attribute on
  `polymer-element`. All custom elements must have a Dart class (see above).
  
* `main()` functions are run in document depth-first order, after
  `DOMContentLoaded`. There is no main main anymore, just a bunch of mains.
  
* Similar to boot.js required to be in `<head>`, your .dart script
  needs to be in `<body>`, ideally at the end.
  This might change, see https://code.google.com/p/dart/issues/detail?id=12388

* apply-author-styles (which used to be on the `<element>` tag) is now set
  as a getter property on the class for the custom element. e.g.:

    class MyElement extends PolymerElement {
       bool get applyAuthorStyles => true;
       // ...
    }

* To create an app that works when compiled to JavaScript, you need to
  build it. See deploy_to_javascript and its `build.dart` file. Notice the
  `--deploy` argument.

## Known issues:

(This is not a complete list of bugs with polymer.dart. Just the bugs that
I ran into.)

conditional_templates:
https://code.google.com/p/dart/issues/detail?id=12687

bind_to_a_map:
Keys must be Symbols. https://code.google.com/p/dart/issues/detail?id=11980

manually_add_custom_element_to_dom:
https://code.google.com/p/dart/issues/detail?id=12089

fancy-syntax doesn't support list literals:
https://github.com/dart-lang/fancy-syntax/issues/9

fancy-syntax doesn't seem to support named bindings:
https://github.com/dart-lang/fancy-syntax/issues/24

fancy-syntax map literals in class attribute aren't treating non-null as true:
https://github.com/dart-lang/fancy-syntax/issues/26

Custom element, custom attribute, values doesn't work:
custom_element_with_custom_attribute_binding
https://code.google.com/p/dart/issues/detail?id=12262

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

## TODO

* Lifecycle methods
* select box
* textarea
* CSS in external file

## Additional authors

This project received help from:

* Nelson Silva <nelson.silva@inevo.pt>
* Chris Buckett <chrisbuckett@gmail.com>
