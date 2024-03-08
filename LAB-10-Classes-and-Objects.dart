class Person {
  String name;
  int age;
  String address;

  Person(String name, int age, String address) {
    this.name = name;
    this.age = age;
    this.address = address;
  }
}

void main() {
  Person person1 = Person("John Doe", 25, "123 Main Street");

  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");

  person1.age = 30;
  person1.address = "456 Elm Street";

  print("Modified Age: ${person1.age}");
  print("Modified Address: ${person1.address}");
}