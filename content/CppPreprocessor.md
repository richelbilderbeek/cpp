
 

 

 

 

 

([C++](Cpp.md)) [Preprocessor](CppPreprocessor.md)
====================================================

 

The [preprocessor](CppPreprocessor.md) performs modifications
(especially [macro](CppMacro.md)'s) to source code, before
[compiling](CppCompiler.md) takes place.

 

The code below shows that the [preprocessor](CppPreprocessor.md)
directive '[\#define](CppDefine.md) [NDEBUG](CppNDEBUG.md)' lets the
[preprocessor](CppPreprocessor.md) remove all [assert](CppAssert.md)
statements.

 

  -------------------------------------------------------------------------------------------
  ` #define NDEBUG #include <cassert>  int main() {   assert(1==2 && "Assume nonsense"); }`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

 

