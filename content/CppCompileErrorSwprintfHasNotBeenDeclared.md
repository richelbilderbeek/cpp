
 

 

 

 

 

([C++](Cpp.md)) [::swprintf has not been declared](CppCompileErrorSwprintfHasNotBeenDeclared.md)
==================================================================================================

 

![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[::swprintf has not been
declared](CppCompileErrorSwprintfHasNotBeenDeclared.md) is a [compile
error](CppCompileError.md) I encountered when using [Qt
Creator](CppQtCreator.md) under [Windows](CppWindows.md) 7.

 

 

 

 

 

Solution
--------

 

Add the following statement before the first
[\#include](CppInclude.md):

  ---------------------------
  ` #undef __STRICT_ANSI__`
  ---------------------------

 

Or more portable:

 

  ------------------------------------------------
  ` #ifdef _WIN32 #undef __STRICT_ANSI__ #endif`
  ------------------------------------------------

 

 

 

 

 

 

 

