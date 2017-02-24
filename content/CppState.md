

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [state/State](CppState.htm)
============================================

 

[state/State](CppState.htm) has multiple meanings:

-   [state](CppState.htm): the size of the state space of a piece of
    code
-   [state](CppState.htm): the current position in state space of a
    piece of code
-   [State](CppDesignPatternState.htm): a [Design
    Pattern](CppDesignPattern.htm)

 

 

 

 

 

[state](CppState.htm): the size of the state space of a piece of code
---------------------------------------------------------------------

 

Using [state](CppState.htm) as the size of the state space of a piece of
code is done while designing and coding. The bigger the state space of a
piece of code, the harder it will be to [debug](CppDebug.htm) \[5\]. The
larger the [scope](CppScope.htm) of a non-[const](CppConst.htm)
[variable](CppVariable.htm), the bigger the state space gets. Keep
[scopes](CppScope.htm) small and keep [variables](CppVariable.htm) as
[local](CppLocal.htm) as possible. Avoid using [global](CppGlobal.htm)
data \[1,3-5,8-9\].

 

 

 

 

 

[state](CppState.htm): the current position in state space of a piece of code
-----------------------------------------------------------------------------

 

Using [state](CppState.htm) as the current position in state space of a
piece of code is done, for example, when [debugging](CppDebug.htm).
While [debugging](CppDebug.htm) one might check for ages being positive
values, names not to have digits and zip codes being in the valid
format.

 

 

 

 

 

[State](CppDesignPatternState.htm): a [Design Pattern](CppDesignPattern.htm)
----------------------------------------------------------------------------

 

See [State](CppDesignPatternState.htm) ([Design
Pattern](CppDesignPattern.htm)).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 10:
    'Minimize global and shared data'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm) . C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18:
    'Declare variables as locally as possible'.
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4. Chapter 1.8.2.a: 'Don't
    use global data (use members)'
4.  [Jarrod Hollingworth](CppJarrodHollingworth.htm) , Bob Swart, Mark
    Cashman, Paul Gustavson. Sams C++ Builder 6 Developer's Guide.
    ISBN: 0-672-32480-6. Chapter 3: 'Avoid using global variables'
5.  [Jesse Liberty](CppJesseLiberty.htm) . Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 5, paragraph 'Global variables':
    'In C++, global variables are avoided because they can create very
    confusing code that is hard to maintain.'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.1:
    'Keep scopes small'.
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm) . The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.2:
    'Don't use the same name in both a scope and an enclosing scope'.
8.  Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5. Gotcha
    \#3: 'Avoid global variables'.
9.  [C++ FAQ Lite](http://www.parashift.com/c++-faq/global-vars.html):
    'The names of global variables should start with //' and 'Instead of
    using a global variable, you should seriously consider if there are
    ways to limit the variable's visibility and/or lifetime'.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
