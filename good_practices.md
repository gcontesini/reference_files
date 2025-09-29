# Good Practices when Coding 

[toc]

## Strong suggestions:

><u>**Be consistent with you name convention!**</u>

> Always ask questions !

> Read the documentation !

> Use either 2 or 4 spaces indentation for your code, and **<u>be consistent</u>!**

> Don't trust AI stuff

> Give your files representative lowercase, date, meaningfull names:
>
> ```bash
> bob_fibroblast-mitochondria_mtdr-dapi_plate-1_2023AGO13.czi
> ```
>
> **<u>Do not</u>** encode your filenames:
>
> ```bash
> FbRGB.01.czi  
> ```

>   Name files using lowercase letters and underscores.
>
>   ```python
>   main.py
>   calculate_area_cell.py
>   ```


>Don't use special characters in the naming and empty spaces
>
>```python
>| " ' ~ ` / \ . , ! @ # $ % ^ & * ( ) { } [ ] ? < > : ;
>```
>

>Proper name your variables:
>
>- constant: ```CONSTANT_NAME```
>- variable: ```variable_name```
>- argument: ```argument_name_```
>- dummy: ```_dummy_variable_name```
>- function: ```function_name```
>- class: ```ClassName```
>- object: ```object_name```

> Write `functions` rather than `scripts`:
>
> <u>script:</u>
>
> ```python3
> for _ in range(10):
>     print( _ )
> ```
>
> <u>function:</u>
>
> ```python3
> def main():
>     
>     for _ in range( 10 ):
>         print( _ )
>         
> if __name__ == "__main__":
>     main()
> ```

> - Functions' names start with verbs.
>
> ```python
> area = calculate_area()
> data_ds = load_data()
> plot_graph()
> ```

> Keep the namespace clean. Don't load the entire module to your namespace.
> Improper handling of namespace creates naming conflicts with `functions` and `variables`.
>    
> ```python3
> # Avoid
> from numpy import random
> from numpy import *
> 
> # Use the following instead
> import numpy
> # or
> import numpy as np
>   

> - Use trail spaces before and after parenthesis, equal signs, ... .
> ```python
> import numpy as np
> def calculate_mean(arg_):
> 	return np.mean(arg_)
> ```
>
> ```python
> import numpy as np
> 
> def calculate_mean( arg_ ):
>     
> 	return np.mean( arg_ )
> ```

>  - Break long lines, lines wider than 80 characters, using vertical code.
>
>  ```python 
>  plt.savefig(
>  	"file_name.png",
>  	dpi=300,
>  	bbox_inches="tight",
>  	facecolor='w',
>  	edgecolor='w',
>  	orientation='portrait',
>  	papertype=None,
>  	format=None,
>  	transparent=False,
>  	bbox_inches=None,
>  	pad_inches=0.1,
>  	frameon=None,
>  	metadata=None
>  ) 
>  ```

> Avoid modifying the argument of your functions. Avoid working with shallow copies. Use Deepcopies instead
>
> ```python3
>  import copy as copy
>  
>  def filter_image( image_ ):
>
> 	# direct reference to image_
> 	image = image_
> 
> 	# shallow copy of image_. All modifications done to image are passed to image_
> 	image = copy.copy( image_ )
>
> 	# Independent copy of image_. Modifications to image won't affect image_.
> 	image = copy.deepcopy( image_ )
> ```

> Don't use magic numbers! What is 10?
>
> ```python3
> def main():
>     if width > 10 :
>         return False
> ```

> ```python3
> MAX_WIDTH_MM = 10
> 
> def main():
> 	if width > MAX_WIDTH_MM:
> 		return FALSE
> ```

> Don't use *gimmicks*, *convoluted logic*, or  *obscure libraries/modules*.

> - Unit test each function individually. Use ```python if __name__ == "__main__": ``` for direct isolated unit test cases.
> - Write unit test as you develop your software.
>
> ```python
> if __name__ == "__main__":
> 	results = call_function( )
> 	asserty results > 0, f"Test 1 FAIL. {results} is le than zero"
> ```

>   - Write docstrings to explain what the function does.
>   - Try docstrings as you develop your software.
>
>   ```python 
>     """
>     One-line summary of the function.
>   
>     Optional longer description of the function.
>   
>     Args:
>       param_1 (type): Description of param1.
>       param_2 (type): Description of param2.
>   
>     Returns:
>       return_1 (type): Description of the return_1.
>   
>     Notes:
>       Additional notes about the function.
>   
>     Raises:
>       ExceptionType: Description of the error conditions.
>   
>     Unit Tests:
>       Unit tests for the function.
>       
>       Expected conditions:
>        - condition_1 must return true :: ARG_1 :: RETURN TRUE
>        - if calculates pi :: ARG_2 :: RETURN 3.1415
>        - if can read the image file :: 
>       
>       Current Status:
>   	 - PASS :: condition_1 :: RETURN TRUE :: 2024-AGO-15
>        - FAIL :: None :: RETURN 6.2830 :: 2024-JUL-29
>   	 - FAIL :: "image_file_name.czi" :: "file 'image_file_name.czi' not found" :: 2024-JUL-02
>   	 
>     Examples:
>       python3 run-main.py
>       or 
>       Make run-main.py
>     """
>   ```
>

> **<u>Use Git</u>** and <u>**Commit often!**</u>

> Avoid Premature Optimisation. Make your code work first, even if it is slow, and ugly.

> Avoid Deep Nesting. If your are three "for loops" or "if conditions" nested, it is time to stop and rethink your logic. 

> **Additional Principles**:
>
>  **DRY principle**: Don't Repeat Yourself - Extract common functionality into reusable functions or classes, reducing duplication and maintenance cost.
>
> **KISS principle**: Keep It  Simple, Stupid - Avoid complex and complicated designs
>
> **Rubber Duck debugging principle**: Explain your logic/code using natural language to a rubber duck. If the rubber duck understand it, then explain to a friend.

## SOLID principles:

<u>**Highly recommended, but not set in stone!**</u>

The SOLID principles are five key design guidelines for writing maintainable, scalable, and robust object-oriented software. They were introduced by Robert C. Martin and are widely adopted in software engineering.

These principles collectively improve code modularity, flexibility, maintainability, and testability. Applying SOLID principles leads to cleaner and more scalable code bases in Python or other OOP languages.

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

**TAKE AWAY:** Here responsibilities are separated: `calculating_average` and `saving _results` don't affect each, nor depend on each other (SRP).

  ### 2. Open/Closed Principle (OCP)

  Software should be open for extension but closed for modification. New functionality can be added by extending existing code without changing
  it. This principle when implement correctly reduces refactoring.

```python
from abc import ABC, abstractmethod

class Shape( ABC ):
    @abstractmethod
    def area( self ):
        pass

class Rectangle( Shape ):
    def __init__( self, width_, height_ ):
        self.width = width_
        self.height = height_

    def area( self ):
        return self.width * self.height

class Square( Rectangle ):
	def __init__( self, width_ ):
        self.width = width_
        self.height = width_
        
    def area(self):
        return self.width * self.height
    
class Circle( Shape ):
    def __init__( self, radius_ ):
        self.radius = radius_

    def area( self ):
        return 3.14 * self.radius * self.radius
```

**TAKE AWAY:** New shapes can be added by sub-class `Shape` without changing existing classes.

## 3. Liskov Substitution Principle (LSP)

Sub types must be substitutable for their base types without altering the correctness of the program. If a subclass violates expected behavior of a base class, it breaks LSP. Well-designed inheritance ensures interchangeability.

Example:

> `Class Square` inherits from `class Rectangle`, thus under LSP, objects type `Square` must perform as a object type `Rectangle`, if it is placed in a role that requires the behaviour of a object `Rectangle`.

**TAKE AWAY:** Any subclass must perform and satisfies its super-class roles and behaviour.

## 4. Interface Segregation Principle (ISP)

Clients should not be forced to depend on interfaces they do not use. Many specific interfaces are better than a large, general one.

Example:

```python3
from abc import ABC, abstractmethod

class Printer( ABC ):
    @abstractmethod
    def print_document( self, document ):
        pass

class Scanner( ABC ):
    @abstractmethod
    def scan_document( self, document ):
        pass

class AllInOnePrinter( Printer, Scanner ):
    def print_document( self, document ):
        # Implementation
        pass

    def scan_document( self, document ):
        # Implementation
        pass
```

**TAKE AWAYS:** Separate interfaces for printing and scanning avoid forcing clients to interact with unused methods. This concept is very close to SRP.

## 5. Dependency Inversion Principle (DIP)

High-level modules should depend on abstractions, not on concrete implementations. Abstractions should not depend on details. In that way, if a new class of `Database` is implemented e.g.: `PSQLDatabase( Database )`, neither `UserService` (DIP) nor `Database` (OCP) need to be modified.

Example using dependency injection:

```python3
class Database( ABC ):
    @abstractmethod
    def save( self, data ):
        pass

class MySQLDatabase( Database ):
    def save( self, data ):
        # Implementation for MySQL
        pass

class UserService:
    def __init__( self, database: Database ):
        self.database = database

    def save_user( self, user ):
        self.database.save( user )
```

**TAKE AWAY:** `UserService` depends on `Database` abstraction, not concrete `MySQLDatabase`, enabling flexibility.

