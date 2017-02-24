

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Preprocessor](CppPreprocessor.htm)
====================================================

 

The [preprocessor](CppPreprocessor.htm) performs modifications
(especially [macro](CppMacro.htm)'s) to source code, before
[compiling](CppCompile.htm) takes place.

 

The code below shows that the [preprocessor](CppPreprocessor.htm)
directive '[\#define](CppDefine.htm) [NDEBUG](CppNDEBUG.htm)' lets the
[preprocessor](CppPreprocessor.htm) remove all [assert](CppAssert.htm)
statements.

 

  -------------------------------------------------------------------------------------------
  ` #define NDEBUG #include <cassert>  int main() {   assert(1==2 && "Assume nonsense"); }`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
