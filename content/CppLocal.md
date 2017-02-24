
 

 

 

 

 

([C++](Cpp.md)) [local variable](CppLocal.md)
===============================================

 

A [local variable](CppLocal.md) is a [variable](CppVariable.md) that
has a limited [scope](CppScope.md).

 

In the example below, there are three different [local
variables](CppLocal.md) called 'x'. In the [function](CppFunction.md)
A, x is local to this [function](CppFunction.md) and exists after it
[definition](CppDefinition.md). In the [function](CppFunction.md) B, x
is a [function](CppFunction.md) argument local to this
[function](CppFunction.md). In [main](CppMain.md), x is local to this
[function](CppFunction.md) and has nothing to do with the other x's.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void A() {   int x = 3;   //Do something with x }  void B(const int x) {   //Do something with x }  int main() {   int x = 0;   //Do something with x }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[Declare](CppDeclaration.md) [variables](CppVariable.md) as
[locally](CppLocal.md) as possible \[1\].

 

[Compare the speed of local versus global
variables](CppLocalVersusGlobal.md).

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md) . C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18:
    'Declare variables as locally as possible'.

 

 

 

 

 

 

