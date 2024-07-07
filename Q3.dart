
void printShapeArea(Shape shape) {
  print('Area of the shape: ${shape.area()}');
}
void main() {
 
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  print('Circle:');
  printShapeArea(circle);

  print('\nRectangle:');
  printShapeArea(rectangle);
}

// Task 3: Demonstrate Polymorphism
abstract class Shape {
  double area();
}
class Circle extends Shape {
 final double radius;
  Circle(this.radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }
}
class Rectangle extends Shape {
   final double width;
 final double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}






