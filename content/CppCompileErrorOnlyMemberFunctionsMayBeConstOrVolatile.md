



 

 

 

 

 

([C++](Cpp.md)) [Only member functions may be 'const' or 'volatile'](CppCompileErrorOnlyMemberFunctionsMayBeConstOrVolatile.md)
=================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] Main.cpp(2): E2310 Only member functions may be 'const' or 'volatile' [C++ Error] Main.cpp(7): E2310 Only member functions may be 'const' or 'volatile'`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: Console

 

  ----------------------------------------------------------------------
  ` void X() const {   }   void Y() volatile {   }   int main() {   }`
  ----------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Remove the [const](CppConst.md) or [volatile](CppVolatile.md).

 

 

 

 

 





 



