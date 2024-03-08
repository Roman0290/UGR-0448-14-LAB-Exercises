import 'dart:math';

void main() {
  List<int> randomNumbers = List.generate(10, (index) => Random().nextInt(10));
  print('List of random numbers: $randomNumbers');

  Set<int> uniqueNumbers = Set.from(randomNumbers);
  print('Unique numbers: $uniqueNumbers');
}