# How to import python module

This is a quick sheet cheat on how to import python3 modules and maintain the modules organized and in a concise way.

```
myproject/
├── __init__.py
├── main.py
└── src/
    ├── __init__.py
    ├── package1/
    │   ├── __init__.py
    │   ├── module1.py
    │   └── subpackage/
    │       ├── __init__.py
    │       └── submodule.py
    └── package2/
        ├── __init__.py
        └── module2.py
```

Now, let's go through the contents of each file:

1. `myproject/__init__.py`:
```python
from .src import package1, package2

__all__ = ['package1', 'package2']
```

2. `myproject/main.py`:
```python
from myproject.src.package1 import module1
from myproject.src.package2 import module2

def main():
    module1.function1()
    module2.function2()

if __name__ == "__main__":
    main()
```

3. `myproject/src/__init__.py`:
```python
from . import package1
from . import package2

__all__ = ['package1', 'package2']
```

4. `myproject/src/package1/__init__.py`:
```python
from .module1 import function1
from .subpackage import submodule

__all__ = ['function1', 'submodule']
```

5. `myproject/src/package1/subpackage/__init__.py`:
```python
from .submodule import subfunction

__all__ = ['subfunction']
```

6. `myproject/src/package2/__init__.py`:
```python
from .module2 import function2

__all__ = ['function2']
```

This structure demonstrates:

1. The top-level `__init__.py` now imports from the `src` directory.
2. The `src/__init__.py` file imports and exposes the packages within it.
3. The `main.py` file now imports from `myproject.src.package1` and `myproject.src.package2`.
4. Each package's `__init__.py` file remains the same, importing and exposing relevant functions or submodules.
5. The `__all__` variable in each `__init__.py` still controls what is imported when using `from package import *`.

This setup maintains a clean import structure and clear package hierarchy, even with the additional `src` directory level. It allows for better organization of larger projects while keeping imports relatively simple.