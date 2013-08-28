function Hug(strength) {
  this.strength = strength;
}

Hug.prototype.embrace = function(length) {
  return 'thanks, that was a good hug for ' + length + ' minutes!';
}

Hug.prototype.patBack = function(onDone) {
  onDone('all done');
}