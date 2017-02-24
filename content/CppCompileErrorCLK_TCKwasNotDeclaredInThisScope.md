



 

 

 

 

 

([C++](Cpp.htm)) [CLK\_TCK was not declared in this scope](CppCompileErrorCLK_TCKwasNotDeclaredInThisScope.htm)
===============================================================================================================

 

[Compile error](CppCompileError.htm) that might occur when using my
[Gnuplot Interface](CppGnuplotInterface.htm) [class](CppClass.htm).

 

I found this definition in the header file 'time.h'. If you cannot find
it, use the code below instead.

 

  -----------------------------------
  ` const double CLK_TCK = 1000.0;`
  -----------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
