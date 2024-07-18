int SomeFn(Function add, int number_one, int number_two) {
  return add(number_one, number_two);
}

void main() {
  var add = (int a, int b) => a + b;

  print(SomeFn(add, 1, 2));
}
