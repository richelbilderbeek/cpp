



 

 

 

 

 

([C++](Cpp.htm)) [extern](CppExtern.htm)
========================================

 

[Keyword](CppKeyword.htm) to make a variable known over multiple units,
but keeping the [declaration](CppDeclaration.htm) and initialization
[local](CppLocal.htm) to a file (probably an [implementation file
(.cpp)](CppImplementationFile.htm))

 

 

 

 

 

Example
-------

 

In the example below there are two [integer](CppInt.htm)
[globals](CppGlobal.htm) (note: avoid using [global](CppGlobal.htm) data
\[1,2\]). The [int](CppInt.htm) x is [declared](CppDeclaration.htm) and
initialized in unit1.cpp, the [int](CppInt.htm) y in
[declared](CppDeclaration.htm) in unit2.cpp and initialized by the
locally unknown [int](CppInt.htm) x. To read the values of both
[integers](CppInt.htm), two getters are put in the [header
files](CppHeaderFile.htm).

 

 

 

 

 

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

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 10:
    'Minimize global and shared data'
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18:
    'Declare variables as locally as possible'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
