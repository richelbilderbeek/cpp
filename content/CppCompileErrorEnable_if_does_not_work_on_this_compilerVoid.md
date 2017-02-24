

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [enable\_if\_does\_not\_work\_on\_this\_compiler&lt;void&gt;](CppCompileErrorEnable_if_does_not_work_on_this_compilerVoid.htm)
===============================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] enable_if.hpp(100): E2029 'enable_if_does_not_work_on_this_compiler<void>' must be a previously defined class or struct`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

  ------------------------------
  ` #include <boost/asio.hpp>`
  ------------------------------

 

-   IDE: [C++ Builder](CppBuilder.htm) 6.0
-   [Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157
-   Boost version: 1.35.0.

 

 

 

 

 

Solution
--------

 

Hypothesis: boost::enable\_if does not work on this compiler. Use a
different compiler.

 

 

 

 

 

Notes
-----

 

This approach did not work:

 

  ---------------------------------------------------------------------
  ` #include <boost/utility/enable_if.hpp> #include <boost/asio.hpp>`
  ---------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
