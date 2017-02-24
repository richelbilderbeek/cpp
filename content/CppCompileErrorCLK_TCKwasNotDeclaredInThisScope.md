
 

 

 

 

 

([C++](Cpp.md)) [CLK\_TCK was not declared in this scope](CppCompileErrorCLK_TCKwasNotDeclaredInThisScope.md)
===============================================================================================================

 

[Compile error](CppCompileError.md) that might occur when using my
[Gnuplot Interface](CppGnuplotInterface.md) [class](CppClass.md).

 

I found this definition in the header file 'time.h'. If you cannot find
it, use the code below instead.

 

  -----------------------------------
  ` const double CLK_TCK = 1000.0;`
  -----------------------------------

 

 

 

 

 

 

