main() {
  var stream= Stream.fromIterable([1,2,3,4,5]);
  // stream.first.then((value) => print('first: $value'));
  // stream.last.then((value) => print('last: $value'));
  // stream.isEmpty.then((value) => print('isEmpty: $value'));
  stream.length.then((value) => print('length: $value'));
}