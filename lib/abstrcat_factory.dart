
// Abstract Products
abstract class Button {
  void render();
}

abstract class Checkbox {
  void check();
}

// Concrete Products for Mac
class MacButton implements Button {
  @override
  void render() => print("Rendering Mac Button");
}

class MacCheckbox implements Checkbox {
  @override
  void check() => print("Checking Mac Checkbox");
}
// Concrete Products for Windows
class WindowsButton implements Button {
  @override
  void render() => print("Rendering Windows Button");
}

class WindowsCheckbox implements Checkbox {
  @override
  void check() => print("Checking Windows Checkbox");
}

// Abstract Factory
abstract class GUIFactory {
  Button createButton();
  Checkbox createCheckbox();
}

// Concrete Factories
class MacFactory implements GUIFactory {
  @override
  Button createButton() => MacButton();

  @override
  Checkbox createCheckbox() => MacCheckbox();
}

class WindowsFactory implements GUIFactory {
  @override
  Button createButton() => WindowsButton();

  @override
  Checkbox createCheckbox() => WindowsCheckbox();
}