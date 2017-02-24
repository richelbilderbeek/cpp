

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Only member functions may be 'const' or 'volatile'](CppCompileErrorOnlyMemberFunctionsMayBeConstOrVolatile.htm)
=================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] Main.cpp(2): E2310 Only member functions may be 'const' or 'volatile' [C++ Error] Main.cpp(7): E2310 Only member functions may be 'const' or 'volatile'`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console

 

  ----------------------------------------------------------------------
  ` void X() const {   }   void Y() volatile {   }   int main() {   }`
  ----------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Remove the [const](CppConst.htm) or [volatile](CppVolatile.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
