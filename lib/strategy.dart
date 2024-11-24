

// Strategy Interface
abstract class PaymentStrategy {
  void pay(double amount);
}

// Concrete Strategies
class CreditCardPayment implements PaymentStrategy {
  @override
  void pay(double amount) => print("Paid $amount using Credit Card");
}

class PayPalPayment implements PaymentStrategy {
  @override
  void pay(double amount) => print("Paid $amount using PayPal");
}

class BitcoinPayment implements PaymentStrategy {
  @override
  void pay(double amount) => print("Paid $amount using Bitcoin");
}

class PaymentContext {
  late PaymentStrategy _strategy;

  void setStrategy(PaymentStrategy strategy) {
    _strategy = strategy;
  }

  void executePayment(double amount) {
    _strategy.pay(amount);
  }
}

