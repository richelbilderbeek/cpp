
 

 

 

 

 

([C++](Cpp.md)) [enable\_if\_does\_not\_work\_on\_this\_compiler&lt;void&gt;](CppCompileErrorEnable_if_does_not_work_on_this_compilerVoid.md)
===============================================================================================================================================

 

[Compile error](CppCompileError.md).

 

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

 

-   IDE: [C++ Builder](CppBuilder.md) 6.0
-   [Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157
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

 

 

 

 

 

 

