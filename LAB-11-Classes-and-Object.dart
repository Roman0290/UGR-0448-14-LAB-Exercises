class Person {
  late String name;
  late int age;
  late String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  late int rollNumber;
  late List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    double average = total / marks.length;
    return average;
  }
}

void main() {
  List<int> marksList = [80, 90, 85, 95, 92];
  Student student1 = Student("John Doe", 18, "123 Main Street", 12345, marksList);

  print("Name: ${student1.name}");
  print("Age: ${student1.age}");
  print("Address: ${student1.address}");
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");

  int totalMarks = student1.calculateTotalMarks();
  double averageMarks = student1.calculateAverageMarks();

  print("Total Marks: $totalMarks");
  print("Average Marks: $averageMarks");
}