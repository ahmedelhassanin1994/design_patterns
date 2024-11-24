// Observer Interface
abstract class Observer {
  void update(String message);
}

// Concrete Observer
class User implements Observer {
  final String name;

  User(this.name);

  @override
  void update(String message) {
    print("Notification to $name: $message");
  }
}

// Subject Interface
abstract class Subject {
  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObservers(String message);
}

// Concrete Subject
class NewsAgency implements Subject {
  final List<Observer> _observers = [];

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers(String message) {
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}


