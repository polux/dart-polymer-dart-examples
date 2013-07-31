# Polymer.dart Samples and Examples

In which I learn all about polymer.dart.

Docs that I found useful:

Binding, conditionals:
: https://github.com/Polymer/mdv/blob/stable/docs/template.md

## General notes:

* Custom elements still require a build (as of 2013-07-23).

* Use `<polymer-element>` instead of `<element>`

* Declarative event binding requires custom elements.

* If you use an `if` attribute on your template, the `bind` attribute
  is optional.
  
* Go through `shadowRoot` to find nodes inside of your custom element.

* `@observable` doesn't really work right now. Use the manual
  `notifyPropertyChange` from `ObservableMixin`

* When manually observing an object, the ChangeRecord only has the field name.
  Not the old and new value. You have to use mirrors.
  
## Known issues:

conditional_templates:
https://code.google.com/p/dart/issues/detail?id=11983

bind_to_a_map:
Keys must be Symbols. https://code.google.com/p/dart/issues/detail?id=11980

custom_element_with_style:
https://code.google.com/p/dart/issues/detail?id=12051
