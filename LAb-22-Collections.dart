void main() {
  List<String> hobbies = [];

  // Add hobbies
  hobbies.add('Reading');
  hobbies.add('Painting');
  hobbies.add('Gardening');

  print('List of hobbies: $hobbies');

  // Remove a hobby
  hobbies.remove('Painting');
  print('Updated list after removing a hobby: $hobbies');

  // Sort the list
  hobbies.sort();
  print('Sorted list of hobbies: $hobbies');

  // Check if the list is empty
  bool isEmpty = hobbies.isEmpty;
  print('Is the list empty? $isEmpty');
}