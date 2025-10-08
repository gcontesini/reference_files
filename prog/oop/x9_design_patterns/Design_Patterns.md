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



### Creational Design Patterns

Creational design patterns provide various object creation mechanisms, which increase flexibility and reuse of existing code.

#### Factory Method

![Factory Method](https://refactoring.guru/images/patterns/cards/factory-method-mini.png)

Provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created.

[Factory](factory.md)

#### Abstract Factory

![Abstract Factory](https://refactoring.guru/images/patterns/cards/abstract-factory-mini.png)

Lets you produce families of related objects without specifying their concrete classes.

[Abstract Factory](abstract_method.md)

#### Builder

![Builder](https://refactoring.guru/images/patterns/cards/builder-mini.png)

Lets you construct complex objects step by step. The pattern allows you to produce different types and representations of an object using the same construction code.

#### Prototype

![Prototype](https://refactoring.guru/images/patterns/cards/prototype-mini.png)

Lets you copy existing objects without making your code dependent on their classes.

[prototype](prototype.md)

#### Singleton

![Singleton](https://refactoring.guru/images/patterns/cards/singleton-mini.png)

Lets you ensure that a class has only one instance, while providing a global access point to this instance.

### Behaviour  Patterns

Behavioral design patterns are concerned with algorithms and the assignment of responsibilities between objects.

#### Chain of Responsibility

​									[![Chain of Responsibility](https://refactoring.guru/images/patterns/cards/chain-of-responsibility-mini.png)](https://refactoring.guru/design-patterns/chain-of-responsibility) 

Lets you pass requests along a chain of handlers. Upon receiving a request, each handler decides either to process the request or to pass it to the next handler in the chain.

[Chain of Responsibility](chain_of_responsibility.md)

#### Command

![Command](https://refactoring.guru/images/patterns/cards/command-mini.png)

Turns a request into a stand-alone object that contains all information about the request. This transformation lets you pass requests as a method arguments, delay or queue a request's execution, and support undoable operations.

[Command](command.py)

#### Iterator

![Iterator](https://refactoring.guru/images/patterns/cards/iterator-mini.png)

Lets you traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.).

[iterator](iterator.md)

#### Mediator

![Mediator](https://refactoring.guru/images/patterns/cards/mediator-mini.png)

Lets you reduce chaotic dependencies between objects. The pattern restricts direct communications between the objects and forces them to collaborate only via a mediator object.

[Mediator](mediator.md)

#### Memento

![Memento](https://refactoring.guru/images/patterns/cards/memento-mini.png)

Lets you save and restore the previous state of an object without revealing the details of its implementation.

[Memento](memento.md)

#### Observer

![Observer](https://refactoring.guru/images/patterns/cards/observer-mini.png)

Lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they're observing.

[Observer](observer.md)

#### State

![State](https://refactoring.guru/images/patterns/cards/state-mini.png)

Lets an object alter its behavior when its internal state changes. It appears as if the object changed its class.

[State](state.md)

#### Strategy

![Strategy](https://refactoring.guru/images/patterns/cards/strategy-mini.png)

Lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.

[Strategy](strategy.md)

#### Template Method

![Template Method](https://refactoring.guru/images/patterns/cards/template-method-mini.png)

Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.

[Template Method](template_method.md)

#### Visitor

![Visitor](https://refactoring.guru/images/patterns/cards/visitor-mini.png)

Lets you separate algorithms from the objects on which they operate.

[Visitor](visitor.md)

### Structural Design Patterns

Structural design patterns explain how to assemble objects and classes into larger structures, while keeping these structures flexible and efficient.

#### Adapter

![Adapter](https://refactoring.guru/images/patterns/cards/adapter-mini.png)

Allows objects with incompatible interfaces to collaborate.

[Adapter](adapter.md)

#### Bridge

![Bridge](https://refactoring.guru/images/patterns/cards/bridge-mini.png)

Lets you split a large class or a set of closely related classes into two separate hierarchies—abstraction and implementation—which can be developed independently of each other.

[Bridge](bridge.md)

**Composite**

![Composite](https://refactoring.guru/images/patterns/cards/composite-mini.png)

Lets you compose objects into tree structures and then work with these structures as if they were individual objects.

[Composite](composite.md)

#### Decorator

![Decorator](https://refactoring.guru/images/patterns/cards/decorator-mini.png)

Lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.

[Decorator](decorator.md)

#### Facade

![Facade](https://refactoring.guru/images/patterns/cards/facade-mini.png)

Provides a simplified interface to a library, a framework, or any other complex set of classes.

[Facade](Facade.md)

#### Flyweight

![Flyweight](https://refactoring.guru/images/patterns/cards/flyweight-mini.png)

Lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.

[Flyweight](flyweight.md)

#### Proxy

![Proxy](https://refactoring.guru/images/patterns/cards/proxy-mini.png)

Lets you provide a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.

[Proxy](proxy.md)