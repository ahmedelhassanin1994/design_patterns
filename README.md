# Observer Design Pattern : 
* is a behavioral pattern where an object (subject) maintains a list of its dependents (observers) and notifies them of any state changes, typically by calling one of their methods.


**Use Cases**:
* Real-time data updates (e.g., news apps, stock prices).
* Event systems in GUIs.
* Notifications for state changes.

# Strategy Design Pattern : 
is a behavioral pattern that defines a family of algorithms, encapsulates each one, and makes them interchangeable. It allows the algorithm to vary independently from clients that use it.

**Use Cases**:
* Payment processing with multiple methods.
* Sorting with different algorithms.
* Validation with interchangeable rules.


# Abstract Factory Design Pattern : 
is a creational pattern that provides a way to create families of related or dependent objects without specifying their concrete classes. It defines an interface for creating objects but lets subclasses decide which objects to instantiate.

**Use Cases**:
* Building UI libraries for multiple platforms (e.g., macOS, Windows).
* Managing families of related objects.


# Adapter Design Pattern : 
is a structural pattern that allows incompatible interfaces to work together. It acts as a bridge between two objects by converting the interface of one object into an interface expected by the client.

**Use Cases**:
* Integrating legacy systems with modern interfaces.
* Supporting multiple third-party libraries.


# Factory Design Pattern : 
is a creational design pattern that provides a way to create objects without specifying the exact class of the object being created. Instead, a factory method or class handles object instantiation.


**Use Cases**:
* Creating objects based on runtime conditions.
* Managing a family of related objects.


# Prototype Design Pattern : 
is a creational pattern that creates new objects by cloning an existing object, known as the prototype. This is useful when creating an object is costly or complex, and you want to avoid reinitializing the entire object.

**Use Cases**:
* Copying objects with expensive initialization (e.g., large data structures).
* Situations where object properties need to be copied.

# State Design Pattern : 
is a behavioral pattern that allows an object to change its behavior when its internal state changes. The object appears to change its class dynamically by delegating tasks to the current state.

**Use Cases**:
* Media players (e.g., play, pause, stop states).
* Workflow systems (e.g., draft, review, publish states).


# Template Method Pattern : 
is a behavioral design pattern that defines the skeleton of an algorithm in a base class but lets subclasses override specific steps of the algorithm without changing its structure.

**Use Cases**:
* Parsing different file formats (e.g., CSV, JSON).
* Defining workflows or processes with varying steps.

