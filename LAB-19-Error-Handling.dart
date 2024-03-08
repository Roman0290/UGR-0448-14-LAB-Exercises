void main() {
  print("Enter a number: ");
  String userInput = stdin.readLineSync();
  
  try {
    int number = int.parse(userInput);
    print("The number is: $number");
  } catch (e) {
    print("Invalid input! Please enter a valid number.");
  }
}