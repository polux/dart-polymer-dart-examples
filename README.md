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
  Not the old and new value. You have to use mirrors.

* If you use custom elements, you should include packages/polymer/boot.js
  and *NOT* dart.js
  
* Custom tag classes now need @CustomTag('element-name'). There's another
  way, but to limit confusion, I won't mention it here. :)
  
* The constructor attribute on <polymer-element> is no longer used.

* Null is falsey for MDV if expressions.

* Calling `mdv.initialize()` is still required with boot.js.

* Every custom element must have a Dart class. Use an empty Dart class
  if necessary. See https://code.google.com/p/dart/issues/detail?id=12254
  If you really don't want to create an empty class, use the
  `registerPolymerElement('my-element', () => new PolymerElement())`
  technique.
  
* The `extends` attribute on polymer-element is optional. If you use it,
  you should use the form of `<div is="my-element">`. If you omit the
  `extends` attribute, you are safe to use `<my-element>`.
  
* If you expose a non-String field as a custom attribute on a custom
  element, be sure to initialize it with a default value. This tells
  polymer.dart how to convert the text value from the attribute to the correctly
  typed field in your class for your custom element.

## Questions
  
* Why do I need to manually repeatedly call dirtyCheck()
  when I want to bind an input field to a model field ?
  See bind_to_input_text_field.
  
## Known issues:

conditional_templates:
https://code.google.com/p/dart/issues/detail?id=11983 but this could be
my misunderstanding.

bind_to_a_map:
Keys must be Symbols. https://code.google.com/p/dart/issues/detail?id=11980

custom_element_with_style:
https://code.google.com/p/dart/issues/detail?id=12051

manually_add_custom_element_to_dom:
https://code.google.com/p/dart/issues/detail?id=12089

fancy-syntax doesn't support list literals:
https://github.com/dart-lang/fancy-syntax/issues/9

iterating over keys in a map with fancy syntax crashes dartium:
https://code.google.com/p/dart/issues/detail?id=12316

fancy-syntax doesn't seem to support named bindings:
https://github.com/dart-lang/fancy-syntax/issues/24