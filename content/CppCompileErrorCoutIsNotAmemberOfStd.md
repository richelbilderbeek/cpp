



 

 

 

 

 

([C++](Cpp.md)) ['cout' is not a member of 'std'](CppCompileErrorCoutIsNotAmemberOfStd.md)
============================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------
  ` [C++ Error] Unit1.htm(3): E2316 'cout' is not a member of 'std'`
  --------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

 

  --------------------------------------------------------------
  ` int main() {   std::cout << "Hello world" << std::endl; }`
  --------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

The [compiler](CppCompiler.md) does not know the
[function](CppFunction.md) '[cout](CppCout.md)'. Add the [header
file](CppHeaderFile.md) so it does:

 

  -----------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello world" << std::endl; }`
  -----------------------------------------------------------------------------------

 

 

 

 

 





 



