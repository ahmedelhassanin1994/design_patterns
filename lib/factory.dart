

abstract class Shape {
  void draw();
}

// Concrete Products
class Circle implements Shape {
  @override
  void draw() => print("Drawing a Circle");
}

class Square implements Shape {
  @override
  void draw() => print("Drawing a Square");
}

// Factory Class
class ShapeFactory {
  static Shape createShape(String type) {
    if (type == "circle") return Circle();
    if (type == "square") return Square();
    throw Exception("Unknown shape type");
  }
}
