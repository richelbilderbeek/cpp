# [bool](CppBool.md)

[bool](CppBool.md) is the [keyword](CppKeyword.md) for a standard
[data type](CppDataType.md) that can store the truth values
[true](CppTrue.md) and [false](CppFalse.md).

## [Example](CppExample.md): simple use of bool

```c++
#include <iostream>

int main() 
{   
  const bool a = true;   
  const bool b = false;
  std::cout << a << ' ' << b << '\n'; 
}
```

This will display:

```
1 0
```

To show the words 'true' and 'false', use [std::boolalpha](CppStdBoolalpha.md):

```c++
#include <iomanip>
#include <iostream>

int main() 
{   
  const bool a = true;   
  const bool b = false;
  std::cout << std::boolalpha << a << ' ' << b << '\n'; 
}
```

This will display:

```
true false
```

## [Advice](CppAdvice.md)

 * Always use [bool](CppBool.md) for logical expressions [1]

## [References](CppReferences.md)

1.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 1.3.2: 'Always use bool for logical expressions'
