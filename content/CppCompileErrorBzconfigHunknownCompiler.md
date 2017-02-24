



 

 

 

 

 

([C++](Cpp.htm)) [bzconfig.h: Unknown compiler](CppCompileErrorBzconfigHunknownCompiler.htm)
============================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------
  ` [C++ Fatal Error] bzconfig.h(48): F1003 Error directive: Unknown compiler`
  ------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

[Blitz++](CppBlitzpp.htm) version: 0.9

Project type: Console Application

 

  -----------------------------------------------
  ` #include <blitz/array.h>  int main() {  } `
  -----------------------------------------------

 

The [compiler](CppCompiler.htm) will show you the code of
blitz/bzconfig.h:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #if defined(__APPLE) /* IBM xlc compiler for Darwin */ #include <blitz/apple/bzconfig.h>   #elif defined(__ICC) /* Intel icc compiler */ #include <blitz/intel/bzconfig.h>   //Other compilers   #else #error Unknown compiler //THIS LINE #endif`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Use a [compiler](CppCompiler.htm) that [Blitz++](CppBlitzpp.htm)
supports.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
