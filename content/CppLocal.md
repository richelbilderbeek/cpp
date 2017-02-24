



 

 

 

 

 

([C++](Cpp.htm)) [local variable](CppLocal.htm)
===============================================

 

A [local variable](CppLocal.htm) is a [variable](CppVariable.htm) that
has a limited [scope](CppScope.htm).

 

In the example below, there are three different [local
variables](CppLocal.htm) called 'x'. In the [function](CppFunction.htm)
A, x is local to this [function](CppFunction.htm) and exists after it
[definition](CppDefinition.htm). In the [function](CppFunction.htm) B, x
is a [function](CppFunction.htm) argument local to this
[function](CppFunction.htm). In [main](CppMain.htm), x is local to this
[function](CppFunction.htm) and has nothing to do with the other x's.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void A() {   int x = 3;   //Do something with x }  void B(const int x) {   //Do something with x }  int main() {   int x = 0;   //Do something with x }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[Declare](CppDeclaration.htm) [variables](CppVariable.htm) as
[locally](CppLocal.htm) as possible \[1\].

 

[Compare the speed of local versus global
variables](CppLocalVersusGlobal.htm).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm) . C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18:
    'Declare variables as locally as possible'.

 

 

 

 

 





 



