# ([C++](Cpp.md)) [scope](CppScope.md)

The [scope](CppScope.md) of a [variable](CppVariable.md) is the area
where its name is valid.

There are multiple types of [scope](CppScope.md) \[10\]:

 * local scope
 * class scope
 * namespace scope
 * global scope
 * statement scope
 * function scope

A [variable](CppVariable.md) [declared](CppDeclaration.md) inside a
[function](CppFunction.md) is only valid inside that
[function](CppFunction.md). Thus its [scope](CppScope.md) is inside
the [function](CppFunction.md).

A [scope](CppScope.md) is defined by accolades, as shown in the
commented example below:

```c++
#include <iostream>

int main()
{
  //Start of main() scope
  int a = 0;
  {
    //Start of scope inside of main() scope
    int b = 0;
  } //b goes out of scope
  for (int i=0; i!=10; ++i)
  {
    //Start of for-loop scope in main() scope
    //Note: i is scoped to here
    std::cout << i << ": Hello world\n";
  }
}
``` 

A [variable](CppVariable.md) 'without scope' is called a
[global](CppGlobal.md) [variable](CppVariable.md). Avoid using
[global](CppGlobal.md) data \[1-5,8-9\]. When the
[compiler](CppCompiler.md) can choose between a [global](CppGlobal.md)
and [local](CppLocal.md) [variable](CppVariable.md) with the same
name, the [local](CppLocal.md) will be used, as shown in the example
below:

```c++
#include <cassert>
#include <iostream>

int a = 1; //Global 'a'

int main()
{
  int a = 2; //Local 'a'
  assert(a==2);
  assert(::a==1); //Use scope operator to get global 'a'
}
```

Keep scopes small \[6,11\] . Don't use the same name in both a scope and
an enclosing scope \[7,12\].

## [References](CppReferences.md)

 * 1.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 10: 'Minimize global and shared data'.
 * 2.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md) . C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18: 'Declare variables as locally as possible'.
 * 3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition).ISBN: 0-201-88954-4. Chapter 1.8.2.a: 'Don't use global data (use members)'
 * 4.  [Jarrod Hollingworth](CppJarrodHollingworth.md) , Bob Swart, Mark Cashman, Paul Gustavson. Sams C++ Builder 6 Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Avoid using global variables'
 * 5.  [Jesse Liberty](CppJesseLiberty.md) . Sams teach yourself C++ in 24 hours. ISBN: 0-672-32224-2. Hour 5, paragraph 'Global variables': 'In C++, global variables are avoided because they can create very confusing code that is hard to maintain.'
 * 6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.1: 'Keep scopes small'.
 * 7.  [Bjarne Stroustrup](CppBjarneStroustrup.md) . The C++ Programming Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.2: 'Don't use the same name in both a scope and an enclosing scope'.
 * 8.  Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5. Gotcha \#3: 'Avoid global variables'.
 * 9.  [C++ FAQ Lite](https://isocpp.org/wiki/faq/coding-standards#global-vars): 'The names of global variables should start with //' and 'Instead of using a global variable, you should seriously consider if there are ways to limit the variable's visibility and/or lifetime'.
 * 10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.3.4. Scope, page 157
 * 11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6. Advice. page 169: '\[17\] Keep scopes small'
 * 12. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6. Advice. page 169: '\[18\] Don't use the same name in both a scope and its enclosing scope'
