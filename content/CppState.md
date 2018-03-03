
 

 

 

 

 

([C++](Cpp.md)) [state/State](CppState.md)
============================================

 

[state/State](CppState.md) has multiple meanings:

-   [state](CppState.md): the size of the state space of a piece of code
-   [state](CppState.md): the current position in state space of a piece of code
-   [State](CppDesignPatternState.md): a [Design Pattern](CppDesignPattern.md)

 

 

 

 

 

[state](CppState.md): the size of the state space of a piece of code
---------------------------------------------------------------------

 

Using [state](CppState.md) as the size of the state space of a piece of
code is done while designing and coding. The bigger the state space of a
piece of code, the harder it will be to [debug](CppDebug.md) \[5\]. The
larger the [scope](CppScope.md) of a non-[const](CppConst.md)
[variable](CppVariable.md), the bigger the state space gets. Keep
[scopes](CppScope.md) small and keep [variables](CppVariable.md) as
[local](CppLocal.md) as possible. Avoid using [global](CppGlobal.md)
data \[1,3-5,8-9\].

 

 

 

 

 

[state](CppState.md): the current position in state space of a piece of code
-----------------------------------------------------------------------------

 

Using [state](CppState.md) as the current position in state space of a
piece of code is done, for example, when [debugging](CppDebug.md).
While [debugging](CppDebug.md) one might check for ages being positive
values, names not to have digits and zip codes being in the valid
format.

 

 

 

 

 

[State](CppDesignPatternState.md): a [Design Pattern](CppDesignPattern.md)
----------------------------------------------------------------------------

 

See [State](CppDesignPatternState.md) ([Design
Pattern](CppDesignPattern.md)).

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 10: 'Minimize global and shared data'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md) . C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18: 'Declare variables as locally as possible'.
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition).ISBN: 0-201-88954-4. Chapter 1.8.2.a: 'Don't use global data (use members)'
4.  [Jarrod Hollingworth](CppJarrodHollingworth.md) , Bob Swart, Mark Cashman, Paul Gustavson. Sams C++ Builder 6 Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Avoid using global variables'
5.  [Jesse Liberty](CppJesseLiberty.md) . Sams teach yourself C++ in 24 hours. ISBN: 0-672-32224-2. Hour 5, paragraph 'Global variables': 'In C++, global variables are avoided because they can create very confusing code that is hard to maintain.'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.1: 'Keep scopes small'.
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md) . The C++ Programming Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.2: 'Don't use the same name in both a scope and an enclosing scope'.
8.  Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5. Gotcha \#3: 'Avoid global variables'.
9.  [C++ FAQ Lite](https://isocpp.org/wiki/faq/coding-standards#global-vars): 'The names of global variables should start with //' and 'Instead of using a global variable, you should seriously consider if there are ways to limit the variable's visibility and/or lifetime'.

 

 

 

 

 

 

