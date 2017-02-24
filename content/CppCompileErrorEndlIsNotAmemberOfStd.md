



 

 

 

 

 

([C++](Cpp.htm)) ['endl' is not a member of 'std'](CppCompileErrorEndlIsNotAmemberOfStd.htm)
============================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------
  ` [C++ Error] Unit1.cpp(3): E2316 'endl' is not a member of 'std'`
  --------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

 

  --------------------------------------------------------------
  ` int main() {   std::cout << "Hello world" << std::endl; }`
  --------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

The [compiler](CppCompiler.htm) was unable to find the
[definition](CppDefinition.htm) of [std::endl](CppEndl.htm).
[\#include](CppInclude.htm) the [header file](CppHeaderFile.htm)
[iostream](CppIostreamH.htm) so it does:

 

  -----------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello world" << std::endl; }`
  -----------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
