

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [NDEBUG](CppNDEBUG.htm)
========================================

 

[\#define](CppDefine.htm) [NDEBUG](CppNDEBUG.htm) to let the
[preprocessor](CppPreprocessor.htm) remove all [asserts](CppAssert.htm)
from your code.

 

The code below has a failing [assert](CppAssert.htm), but due to
[NDEBUG](CppNDEBUG.htm) it will not abort the program. Commonly, one
[\#defines](CppDefine.htm) [NDEBUG](CppNDEBUG.htm) after
[debugging](CppDebug.htm).

 

  ---------------------------------------------------------------------------------
  ` #define NDEBUG #include <cassert>  int main() {   assert(1==2); //Nonsense }`
  ---------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
