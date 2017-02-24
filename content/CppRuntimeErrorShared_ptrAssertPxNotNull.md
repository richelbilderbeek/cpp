



 

 

 

 

 

([C++](Cpp.htm)) [shared\_ptr.hpp: Assertion failed: px != 0](CppRuntimeErrorShared_ptrAssertPxNotNull.htm)
===========================================================================================================

 

[Runtime error](CppRuntimeError.htm).

 

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------------
  ` Assertion failed: px != 0, file c:\my_files\include\boost\shared_ptr.hpp, line 253 Abnormal program termination`
  --------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

A [boost::shared\_ptr](CppShared_ptr.htm) was used before
initialization.

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/shared_ptr.hpp>  int main() {   boost::shared_ptr<Widget> w; //ERROR! Forgot to initialize w, should have written:                                //boost::shared_ptr<Widget> w(new Widget);   w->mX; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Initialize all [boost::shared\_ptr](CppShared_ptr.htm)s.

 

 

 

 

 





 



