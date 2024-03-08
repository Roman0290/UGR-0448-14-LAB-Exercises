void main() {
  int start = 1;
  int end = 20;

  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print("$number is prime.");
    }
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}