



 

 

 

 

 

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

 

 

 

 

 





 



