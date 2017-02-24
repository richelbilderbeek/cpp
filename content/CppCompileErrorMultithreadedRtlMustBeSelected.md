
 

 

 

 

 

([C++](Cpp.md)) [Multithreaded RTL must be selected](CppCompileErrorMultithreadedRtlMustBeSelected.md)
========================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------
  ` [C++ Fatal Error] push_options.hpp(58): F1003 Error directive: Multithreaded RTL must be selected.`
  -------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

-   IDE: [C++ Builder](CppBuilder.md) 6.0
-   [Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157
-   Boost version: 1.35.0.

 

  ------------------------------
  ` #include <boost/asio.hpp>`
  ------------------------------

 

 

 

 

 

Solution
--------

 

You must enable multi-thread applications:

 

1.  'File | Close All'
2.  'File | New | Other'
3.  Select 'Console Wizard'
4.  Check 'Multi-threaded'

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
