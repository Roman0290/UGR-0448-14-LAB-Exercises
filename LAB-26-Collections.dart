class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  Student student = Student('John', [80, 90, 75, 85, 95]);
  double averageMark = student.calculateAverageMark();
  print('Average mark for ${student.name}: $averageMark');
}