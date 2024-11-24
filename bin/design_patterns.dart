import 'package:design_patterns/factory.dart';

void main() {

  Shape shape1 = ShapeFactory.createShape("circle");
  shape1.draw(); // Output: Drawing a Circle

  Shape shape2 = ShapeFactory.createShape("square");
  shape2.draw(); // Output: Drawing a Square


}
