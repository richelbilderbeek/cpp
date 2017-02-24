



 

 

 

 

 

([C++](Cpp.md)) [bzconfig.h: Unknown compiler](CppCompileErrorBzconfigHunknownCompiler.md)
============================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------
  ` [C++ Fatal Error] bzconfig.h(48): F1003 Error directive: Unknown compiler`
  ------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

[Blitz++](CppBlitzpp.md) version: 0.9

Project type: Console Application

 

  -----------------------------------------------
  ` #include <blitz/array.h>  int main() {  } `
  -----------------------------------------------

 

The [compiler](CppCompiler.md) will show you the code of
blitz/bzconfig.h:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #if defined(__APPLE) /* IBM xlc compiler for Darwin */ #include <blitz/apple/bzconfig.h>   #elif defined(__ICC) /* Intel icc compiler */ #include <blitz/intel/bzconfig.h>   //Other compilers   #else #error Unknown compiler //THIS LINE #endif`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Use a [compiler](CppCompiler.md) that [Blitz++](CppBlitzpp.md)
supports.

 

 

 

 

 





 



