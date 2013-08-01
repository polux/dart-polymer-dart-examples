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

## Questions

* Can I have a custom element _without_ a Dart class, and still use boot.js?
  See custom_element_with_style
  
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
