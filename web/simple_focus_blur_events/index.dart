import 'dart:html';

main() {
  OutputElement output = query('#output');
  InputElement input = query('#test-me');
  input.onFocus.listen((_) {
    print('got focus');
    output.text = 'focus';
  });
  input.onBlur.listen((_) {
    print('got blur');
    output.text = 'blur';
  });
}