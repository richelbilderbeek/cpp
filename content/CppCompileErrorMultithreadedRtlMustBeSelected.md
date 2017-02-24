



 

 

 

 

 

([C++](Cpp.htm)) [Multithreaded RTL must be selected](CppCompileErrorMultithreadedRtlMustBeSelected.htm)
========================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------
  ` [C++ Fatal Error] push_options.hpp(58): F1003 Error directive: Multithreaded RTL must be selected.`
  -------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

-   IDE: [C++ Builder](CppBuilder.htm) 6.0
-   [Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157
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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
