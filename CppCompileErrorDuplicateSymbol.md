[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Duplicate symbol](CppCompileErrorDuplicateSymbol.htm)
=======================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------
  ` ld: duplicate symbol Gnuplot::SetLineStyles() in /MyFolder/UnitGnuplotInterface.o and /MyFolder/GnuplotInterfaceMain.o`
  ---------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): Xcode 3.1.2

[Compiler](CppCompiler.htm): [Gcc](CppGcc.htm) 4.0.1

 

This might happen if you use my [Gnuplot
Interface](CppGnuplotInterface.htm). The cause is in the following
lines:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Yes, this #include is non-standard //But it enables you to compile-and-run //To do it correctly, add the file 'Gnuplot.cpp' to your project, //and #include 'Gnuplot.h' instead. #include "UnitGnuplotInterface.cpp"`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Solution
--------

 

Duplicate symbols occur when you have both added an [implementation file
(.cpp)](CppImplementationFile.htm) to your project and
[\#included](CppInclude.htm) it. This way, the [implementation file
(.cpp)](CppImplementationFile.htm) gets [compiled](CppCompiler.htm)
twice: once as a module in your project (as it is added to your project)
and subsequently as a piece of [\#included](CppInclude.htm) code.

 

Avoid [\#including](CppInclude.htm) [implementation files
(.cpp)](CppImplementationFile.htm). Prefer [\#including](CppInclude.htm)
[header files (.h)](CppHeaderFile.htm) only. Prefer adding
[implementation files (.cpp)](CppImplementationFile.htm) to your
project.

 

For the [Gnuplot Interface](CppGnuplotInterface.htm) problem: follow the
hints from the commments:

 

  -------------------------------------------------------------------------------------------------------
  ` //#include "UnitGnuplotInterface.cpp" //Already added to project #include "UnitGnuplotInterface.h"`
  -------------------------------------------------------------------------------------------------------

 

 

 

 

 

Acknowledgements
----------------

 

Thanks to Roger Wehage for sending me a complete and detailed email with
this problem

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
