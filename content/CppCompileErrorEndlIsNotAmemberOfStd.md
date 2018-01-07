
 

 

 

 

 

([C++](Cpp.md)) ['endl' is not a member of 'std'](CppCompileErrorEndlIsNotAmemberOfStd.md)
============================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------
  ` [C++ Error] Unit1.cpp(3): E2316 'endl' is not a member of 'std'`
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

 

The [compiler](CppCompiler.md) was unable to find the
[definition](CppDefinition.md) of [std::endl](CppStdEndl.md).
[\#include](CppInclude.md) the [header file](CppHeaderFile.md)
[iostream](CppIostreamH.md) so it does:

 

  -----------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello world" << std::endl; }`
  -----------------------------------------------------------------------------------

 

 

 

 

 

 

