class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rectangle = Rectangle(5, 10);
  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();

  print("Rectangle Area: $area");
  print("Rectangle Perimeter: $perimeter");
}