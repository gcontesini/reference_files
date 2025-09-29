## Good Practices when Coding 

[toc]


## Strong suggestions:

>   Name files using lowercase letters and underscores.
>```python
> main.py
> functions.py
>```

> Use 2 spaces indentation.

> Give your variables representative names

## Naming:
> - constant: ```CONSTANT_NAME```
> - variable: ```variable_name```
> - argument: ```argument_name_```
> - dummy: ```_dummy_variable_name```
> - function: ```function_name```
> - class: ```ClassName```
> - object: ```object_name```

> Functions' names start with verbs.
> ```python
> area = calculate_area()
> data_ds = load_data()
> plot_graph()
> ```

> Use trail spaces before and after parentesis.
> ```python
> calculate_mean( arg_ ):
> ...
> ```

>  Break lines wider than 80 characters, using vertical code.
> ```python 
> plt.savefig(
>   "file_name.png",
>   dpi=300,
>   bbox_inches="tight"
> ) 
> ```

> Unit test each function individually. Use ```python if __name__ == "__main__": ``` for direct isolated unit test cases.
> ```python
> if __name__ == "__main__":
>   results = call_function( )
>   asserty results >= 0, f"results le to zero"
> ```

>   Write docstrings to explain what the function does. Please, see docstring template for reference.

## SOLID principles:

The SOLID principles are five key design guidelines for writing maintainable, scalable, and robust object-oriented software. They were introduced by Robert C. Martin and are widely adopted in software engineering.

These principles collectively improve code modularity, flexibility, maintainability, and testability. Applying SOLID principles leads to cleaner and more scalable codebases in Python or other OOP languages.

### 1. Single Responsibility Principle (SRP):
Each function should do one thing, and one thing only.

```python
import numpy as np
def calculate_average( array_ ):

  return np.sum( array_ )/len( array_ )

def save_results( results_ ):

  with open("results.txt") as file:
    file.write(results)

def main():

  my_array = np.arange(0,10):
  results = calculate_average( my_array )
  save_results( results )

if __name__ == "__main__":

  main()

```

**TAKE AWAY:** Here responsibilities are separated: calculating the average and saving the results are detached (SRP)

  ### 2. Open/Closed Principle (OCP)

  Software should be open for extension but closed for modification. New functionality can be added by extending existing code without changing
  it. This principle when implement correctly reduces refactoring.

```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return 3.14 * self.radius * self.radius
```

**TAKE AWAY:** New shapes can be added by subclassing `Shape` without changing existing classes.

## 3. Liskov Substitution Principle (LSP)

Subtypes must be substitutable for their base types without altering the correctness of the program. If a subclass violates expected behavior of a base class, it breaks LSP. Well-designed inheritance ensures interchangeability.

> Example:
>
> `Class Rectangle` is a subclass of `class Shape`, thus under LSP, objects type `Rectangle` must perform as a object type `Shape`, if it is placed in a role that requires the behaviour of a `Shape` (despite `Shape` being abstract in this example).

**TAKE AWAY:** Any subclass must perform and satisfies its super-class roles and behaviour.

## 4. Interface Segregation Principle (ISP)

Clients should not be forced to depend on interfaces they do not use. Many specific interfaces are better than a large, general one.

Example:

```python3
from abc import ABC, abstractmethod

class Printer(ABC):
    @abstractmethod
    def print_document(self, document):
        pass

class Scanner(ABC):
    @abstractmethod
    def scan_document(self, document):
        pass

class AllInOnePrinter(Printer, Scanner):
    def print_document(self, document):
        # Implementation
        pass

    def scan_document(self, document):
        # Implementation
        pass
```

**TAKE AWAYS:** Separate interfaces for printing and scanning avoid forcing clients to interact with unused methods. This concept is very close to SRP.

## 5.Dependency Inversion Principle (DIP)

High-level modules should depend on abstractions, not on concrete implementations. Abstractions should not depend on details.

Example using dependency injection:

```python3
class Database(ABC):
    @abstractmethod
    def save(self, data):
        pass

class MySQLDatabase(Database):
    def save(self, data):
        # Implementation for MySQL
        pass

class UserService:
    def __init__(self, database: Database):
        self.database = database

    def save_user(self, user):
        self.database.save(user)
```

**TAKE AWAY:** `UserService` depends on `Database` abstraction, not concrete `MySQLDatabase`, enabling flexibility.

