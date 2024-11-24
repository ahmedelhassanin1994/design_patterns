
// Client
import 'package:design_patterns/Prototype.dart';
import 'package:design_patterns/abstrcat_factory.dart';
import 'package:design_patterns/adapter.dart';
import 'package:design_patterns/factory.dart';
import 'package:design_patterns/observer.dart';
import 'package:design_patterns/strategy.dart';

void main() {

  Shape shape1 = ShapeFactory.createShape("circle");
  shape1.draw(); // Output: Drawing a Circle

  Shape shape2 = ShapeFactory.createShape("square");
  shape2.draw(); // Output: Drawing a Square



  MediaPlayer player = MediaAdapter(AdvancedMediaPlayer());

  player.play("movie.mp4"); // Output: Playing MP4 file: movie.mp4
  player.play("song.vlc");  // Output: Playing VLC file: song.vlc



  GUIFactory factory;

  // Choose factory dynamically
  String os = "mac"; // Change to "windows" for Windows
  if (os == "mac") {
    factory = MacFactory();
  } else {
    factory = WindowsFactory();
  }

  // Create GUI components
  Button button = factory.createButton();
  Checkbox checkbox = factory.createCheckbox();

  button.render(); // Output: Rendering Mac Button
  checkbox.check(); // Output: Checking Mac Checkbox


  // strategy
  PaymentContext context = PaymentContext();

// Pay with Credit Card
  context.setStrategy(CreditCardPayment());
  context.executePayment(100.0); // Output: Paid 100.0 using Credit Card

  // Switch to PayPal
  context.setStrategy(PayPalPayment());
  context.executePayment(200.0); // Output: Paid 200.0 using PayPal

  // Switch to Bitcoin
  context.setStrategy(BitcoinPayment());
  context.executePayment(300.0); // Output: Paid 300.0 using Bitcoin


  //observer
  NewsAgency agency = NewsAgency();

  Observer user1 = User("Ahmed");
  Observer user2 = User("Sara");

  agency.addObserver(user1);
  agency.addObserver(user2);

  agency.notifyObservers("Breaking News: Flutter 4.0 released!");
  // Output:
  // Notification to Ahmed: Breaking News: Flutter 4.0 released!
  // Notification to Sara: Breaking News: Flutter 4.0 released!

  agency.removeObserver(user1);
  agency.notifyObservers("Update: New Flutter features coming soon!");
  // Output:
  // Notification to Sara: Update: New Flutter features coming soon!



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