
 

 

 

 

 

([C++](Cpp.md)) [Duplicate symbol](CppCompileErrorDuplicateSymbol.md)
=======================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------
  ` ld: duplicate symbol Gnuplot::SetLineStyles() in /MyFolder/UnitGnuplotInterface.o and /MyFolder/GnuplotInterfaceMain.o`
  ---------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): Xcode 3.1.2

[Compiler](CppCompiler.md): [Gcc](CppGcc.md) 4.0.1

 

This might happen if you use my [Gnuplot
Interface](CppGnuplotInterface.md). The cause is in the following
lines:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Yes, this #include is non-standard //But it enables you to compile-and-run //To do it correctly, add the file 'Gnuplot.cpp' to your project, //and #include 'Gnuplot.h' instead. #include "UnitGnuplotInterface.cpp"`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Solution
--------

 

Duplicate symbols occur when you have both added an [implementation file
(.cpp)](CppImplementationFile.md) to your project and
[\#included](CppInclude.md) it. This way, the [implementation file
(.cpp)](CppImplementationFile.md) gets [compiled](CppCompiler.md)
twice: once as a module in your project (as it is added to your project)
and subsequently as a piece of [\#included](CppInclude.md) code.

 

Avoid [\#including](CppInclude.md) [implementation files
(.cpp)](CppImplementationFile.md). Prefer [\#including](CppInclude.md)
[header files (.h)](CppHeaderFile.md) only. Prefer adding
[implementation files (.cpp)](CppImplementationFile.md) to your
project.

 

For the [Gnuplot Interface](CppGnuplotInterface.md) problem: follow the
hints from the commments:

 

  -------------------------------------------------------------------------------------------------------
  ` //#include "UnitGnuplotInterface.cpp" //Already added to project #include "UnitGnuplotInterface.h"`
  -------------------------------------------------------------------------------------------------------

 

 

 

 

 

Acknowledgements
----------------

 

Thanks to Roger Wehage for sending me a complete and detailed email with
this problem

 

 

 

 

 

 

