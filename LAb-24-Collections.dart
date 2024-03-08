void main() {
  Map<String, int> studentMarks = {};

  // Add entries to the map
  studentMarks['John'] = 85;
  studentMarks['Emma'] = 92;
  studentMarks.putIfAbsent('Sarah', () => 78);

  // Iterate over the map
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  // Check if a key exists
  bool hasMarkForJohn = studentMarks.containsKey('John');
  print('Does the map contain a mark for John? $hasMarkForJohn');
}