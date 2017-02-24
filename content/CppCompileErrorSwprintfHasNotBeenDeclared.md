



 

 

 

 

 

([C++](Cpp.htm)) [::swprintf has not been declared](CppCompileErrorSwprintfHasNotBeenDeclared.htm)
==================================================================================================

 

![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[::swprintf has not been
declared](CppCompileErrorSwprintfHasNotBeenDeclared.htm) is a [compile
error](CppCompileError.htm) I encountered when using [Qt
Creator](CppQtCreator.htm) under [Windows](CppWindows.htm) 7.

 

 

 

 

 

Solution
--------

 

Add the following statement before the first
[\#include](CppInclude.htm):

  ---------------------------
  ` #undef __STRICT_ANSI__`
  ---------------------------

 

Or more portable:

 

  ------------------------------------------------
  ` #ifdef _WIN32 #undef __STRICT_ANSI__ #endif`
  ------------------------------------------------

 

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
