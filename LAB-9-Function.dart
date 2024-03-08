void main() {
  String input = "Hello, World!";
  String reversed = reverseString(input);
  print("Reversed string: $reversed");
}

String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}