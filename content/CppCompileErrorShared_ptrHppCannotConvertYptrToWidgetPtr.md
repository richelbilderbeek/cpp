

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [shared\_ptr.hpp: Cannot convert 'Y \*' to 'Widget \*'](CppCompileErrorShared_ptrHppCannotConvertYptrToWidgetPtr.htm)
======================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------
  ` [C++ Error] shared_ptr.hpp(124): E2034 Cannot convert 'Y *' to 'Widget *'`
  ------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Boost version: 1.35.0.

 

A boost::shared\_ptr is either uninitialized or initialized with a
pointer. Initializing with 0 is not a valid initialization and therefore
not possible.

 

  -------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/shared_ptr.hpp>   int main() {   boost::shared_ptr<Widget> w(0); //ERROR! Cannot initialize with 0 }`
  -------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Initialize the [boost::shared\_ptr](CppShared_ptr.htm).

 

  ------------------------------------------------------------------------------------------------
  ` #include <boost/shared_ptr.hpp>   int main() {   boost::shared_ptr<Widget> w(new Widget); }`
  ------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
