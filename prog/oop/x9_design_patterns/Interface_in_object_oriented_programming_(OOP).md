# introduction to graphical user interface

[toc]

## Overview

Coupling:

Two classes A & B; 

1. <u>Tight coupling:</u> class A interact w/ B directly by attributes using arrow or dot operators. 
2. <u>loose coupling</u>: class A interacts w/ B via getters and setters.
3. <u>Decoupling</u>: class A interacts w/ B via mediators designs. Meaning A uses a:
   1. Interface/abstract class
   2. Dependency injection
   3. Dependency inversion
   4. Mediator design
   5. Adapter design
   6. proxy design
   7. service design
   8. factory design

## Design Patterns

Gang of Four (GoF) - Bibliography:

https://en.wikipedia.org/wiki/Design_Patterns

https://www.amazon.ca/Head-First-Design-Patterns-Brain-Friendly/dp/0596007124

Peter Norvig https://www.norvig.com/ moving design patterns 

Inversion of Control

"Hollywood Principle" - Don't call us we call you.

### Behaviour  Patterns

Behavioral design patterns are concerned with algorithms and the assignment of responsibilities between objects.

---

# Creational Design Patterns

Creational design patterns provide various object creation mechanisms, which increase flexibility and reuse of existing code.

![Factory Method](https://refactoring.guru/design-patterns/factory-method)

**Factory Method**

Provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created.

![Abstract Factory](https://refactoring.guru/images/patterns/cards/abstract-factory-mini.png)**Abstract Factory**

Lets you produce families of related objects without specifying their concrete classes.

![Builder](https://refactoring.guru/images/patterns/cards/builder-mini.png)**Builder**

Lets you construct complex objects step by step. The pattern allows you to produce different types and representations of an object using the same construction code.

![Prototype](https://refactoring.guru/images/patterns/cards/prototype-mini.png)**Prototype**

Lets you copy existing objects without making your code dependent on their classes.

![Singleton](https://refactoring.guru/images/patterns/cards/singleton-mini.png)**Singleton**

Lets you ensure that a class has only one instance, while providing a global access point to this instance.

---



#### Chain of Responsibility

​									[![Chain of Responsibility](https://refactoring.guru/images/patterns/cards/chain-of-responsibility-mini.png)](https://refactoring.guru/design-patterns/chain-of-responsibility) 

Lets you pass requests along a chain of handlers. Upon receiving a request, each handler decides either to process the request or to pass it to the next handler in the chain.

#### Command

![Command](https://refactoring.guru/images/patterns/cards/command-mini.png)

Turns a request into a stand-alone object that contains all information about the request. This transformation lets you pass requests as a method arguments, delay or queue a request's execution, and support undoable operations.

#### Iterator

![Iterator](https://refactoring.guru/images/patterns/cards/iterator-mini.png)

Lets you traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.).

#### Mediator

![Mediator](https://refactoring.guru/images/patterns/cards/mediator-mini.png)

Lets you reduce chaotic dependencies between objects. The pattern restricts direct communications between the objects and forces them to collaborate only via a mediator object.

#### Memento

![Memento](https://refactoring.guru/images/patterns/cards/memento-mini.png)

Lets you save and restore the previous state of an object without revealing the details of its implementation.

#### Observer

![Observer](https://refactoring.guru/images/patterns/cards/observer-mini.png)

Lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they're observing.

[Observer](observer.md)

#### State

![State](https://refactoring.guru/images/patterns/cards/state-mini.png)

Lets an object alter its behavior when its internal state changes. It appears as if the object changed its class.

#### Strategy

![Strategy](https://refactoring.guru/images/patterns/cards/strategy-mini.png)

Lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.

#### Template Method

![Template Method](https://refactoring.guru/images/patterns/cards/template-method-mini.png)

Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.

#### Visitor

![Visitor](https://refactoring.guru/images/patterns/cards/visitor-mini.png)

Lets you separate algorithms from the objects on which they operate.