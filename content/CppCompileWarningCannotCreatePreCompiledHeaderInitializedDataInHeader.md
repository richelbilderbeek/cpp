



 

 

 

 

 

([C++](Cpp.md)) [Cannot create pre-compiled header: initialized data in header](CppCompileWarningCannotCreatePreCompiledHeaderInitializedDataInHeader.md)
===========================================================================================================================================================

 

[Compile warning](CppCompileError.md).

 

If you get this [compile warning](CppCompileWarning.md), compiling will
be significantly slowed down. Luckily, the problem is easy to solve.

 

There are many ways to get this warning. Below I'll show how to cause
one and how to solve all.

 

 

 

 

 

Full warning message
--------------------

 

  ---------------------------------------------------------------------------------------------------
  ` [C++ Warning] locale(150): W8058 Cannot create pre-compiled header: initialized data in header`
  ---------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

  ------------------------------------------------------
  ` #include <boost/lexical_cast.hpp> #pragma hdrstop`
  ------------------------------------------------------

 

Which takes you to the following line in 'include/stlport/locale':

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef __LOCALE_INITIALIZED #define __LOCALE_INITIALIZED // Global initializer object, to ensure initialization of locale subsystem. #ifndef __BORLANDC static #else extern _STLP_DECLSPEC #endif ios_base::_Loc_init _LocInit;      //This line #endif`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: [VCL](CppVcl.md)

[Boost](CppBoost.md) version: 1.35.0

 

 

 

 

 

Solution
--------

 

Put the \#include of the header that causes this behind the \#pragma:

 

  ------------------------------------------------------
  ` #pragma hdrstop #include <boost/lexical_cast.hpp>`
  ------------------------------------------------------

 

 

 

 

 





 



