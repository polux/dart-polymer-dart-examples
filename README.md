# Polymer.dart Samples and Examples

In which I learn all about polymer.dart.

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
  
* Custom element classes now require @CustomTag("my-element")

* If you use custom elements, you should include packages/polymer/boot.js
  and *NOT* dart.js
  
## Known issues:

conditional_templates:
https://code.google.com/p/dart/issues/detail?id=11983

bind_to_a_map:
Keys must be Symbols. https://code.google.com/p/dart/issues/detail?id=11980

custom_element_with_style:
https://code.google.com/p/dart/issues/detail?id=12051
