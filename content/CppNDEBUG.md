
 

 

 

 

 

([C++](Cpp.md)) [NDEBUG](CppNDEBUG.md)
========================================

 

[\#define](CppDefine.md) [NDEBUG](CppNDEBUG.md) to let the
[preprocessor](CppPreprocessor.md) remove all [asserts](CppAssert.md)
from your code.

 

The code below has a failing [assert](CppAssert.md), but due to
[NDEBUG](CppNDEBUG.md) it will not abort the program. Commonly, one
[\#defines](CppDefine.md) [NDEBUG](CppNDEBUG.md) after
[debugging](CppDebug.md).

 

  ---------------------------------------------------------------------------------
  ` #define NDEBUG #include <cassert>  int main() {   assert(1==2); //Nonsense }`
  ---------------------------------------------------------------------------------

 

 

 

 

 

 

