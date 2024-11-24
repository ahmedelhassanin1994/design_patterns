// Prototype Interface
abstract class Prototype {
  Prototype clone();
}

// Concrete Prototype
class Rectangle implements Prototype {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  Prototype clone() {
    return Rectangle(width, height); // Creates a new object with the same properties
  }

  @override
  String toString() => "Rectangle(width: $width, height: $height)";
}

// Client
void main() {
  // Original Object
  Rectangle original = Rectangle(10.0, 20.0);
  print("Original: $original"); // Output: Original: Rectangle(width: 10.0, height: 20.0)

  // Cloned Object
  Rectangle clone = original.clone() as Rectangle;
  print("Clone: $clone"); // Output: Clone: Rectangle(width: 10.0, height: 20.0)

  // Modifying the clone does not affect the original
  clone.width = 15.0;
  print("Modified Clone: $clone"); // Output: Modified Clone: Rectangle(width: 15.0, height: 20.0)
  print("Original remains: $original"); // Output: Original remains: Rectangle(width: 10.0, height: 20.0)
}
