
 

 

 

 

 

([C++](Cpp.md)) [tuple\_basic.hpp: Multiple declaration for 'element&lt;N,T&gt;'](CppCompileErrorTuple_basicHppMultipleDeclarationForElementNT.md)
====================================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error messages
-------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] tuple_basic.hpp(156): E2238 Multiple declaration for 'element<N,T>' [C++ Error] tuple_basic.hpp(141): E2344 Earlier declaration of 'element<N,T>'`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

IDE: [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Boost version: 1.35.0.

 

  -------------------------------------
  ` #include <boost/tuple/tuple.hpp>`
  -------------------------------------

 

 

 

 

 

Solution/workaround
-------------------

 

Add a [\#define](CppDefine.md) before the [\#include](CppInclude.md).

 

  -------------------------------------------------------------------------
  ` #define BOOST_NO_CV_SPECIALIZATIONS #include <boost/tuple/tuple.hpp>`
  -------------------------------------------------------------------------

 

In my humble opinion, this is a workaround. It might cause new compile
errors.

 

 

 

 

 

 

