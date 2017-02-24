



 

 

 

 

 

([C++](Cpp.md)) [extern](CppExtern.md)
========================================

 

[Keyword](CppKeyword.md) to make a variable known over multiple units,
but keeping the [declaration](CppDeclaration.md) and initialization
[local](CppLocal.md) to a file (probably an [implementation file
(.cpp)](CppImplementationFile.md))

 

 

 

 

 

Example
-------

 

In the example below there are two [integer](CppInt.md)
[globals](CppGlobal.md) (note: avoid using [global](CppGlobal.md) data
\[1,2\]). The [int](CppInt.md) x is [declared](CppDeclaration.md) and
initialized in unit1.cpp, the [int](CppInt.md) y in
[declared](CppDeclaration.md) in unit2.cpp and initialized by the
locally unknown [int](CppInt.md) x. To read the values of both
[integers](CppInt.md), two getters are put in the [header
files](CppHeaderFile.md).

 

 

 

 

 

UnitMain.cpp
------------

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include "Unit1.h" #include "Unit2.h"   int main() {   assert(GetX() == 42);   assert(GetY() == 42); }`
  ------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Unit1.h
-------

 

  ---------------------------------------------------------
  ` #ifndef Unit1H #define Unit1H   int GetX();   #endif`
  ---------------------------------------------------------

 

 

 

 

 

Unit1.cpp
---------

 

  --------------------------------------------------------------
  ` #include "Unit1.h"  int x = 42;  int GetX() { return x; }`
  --------------------------------------------------------------

 

 

 

 

 

Unit2.h
-------

 

  -------------------------------------------------------
  ` #ifndef Unit2H #define Unit2H  int GetY();  #endif`
  -------------------------------------------------------

 

 

 

 

 

Unit2.cpp
---------

 

  -----------------------------------------------------------------------------------------------------------------------------
  ` #include "Unit2.h"  extern int x;  int y = x; //Seems risky, dependent on module process order  int GetY() { return y; }`
  -----------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 10:
    'Minimize global and shared data'
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18:
    'Declare variables as locally as possible'

 

 

 

 

 





 



