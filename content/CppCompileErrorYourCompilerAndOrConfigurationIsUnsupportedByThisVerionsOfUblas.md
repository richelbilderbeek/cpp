



 

 

 

 

 

([C++](Cpp.md)) [Your compiler and/or configuration is unsupported by this verions of uBLAS](CppCompileErrorYourCompilerAndOrConfigurationIsUnsupportedByThisVerionsOfUblas.md)
=================================================================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Fatal Error] config.hpp(170): F1003 Error directive: Your compiler and/or configuration is unsupported by this verions of uBLAS. Define BOOST_UBLAS_UNSUPPORTED_COMPILER=0 to override this message. Boost 1.32.0 includes uBLAS with support for many older compilers.`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

IDE: [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Boost version: 1.38.0.

 

  ----------------------------------------------
  ` #include <boost/numeric/ublas/matrix.hpp>`
  ----------------------------------------------

 

The compiler will show you the code of
boost/numeric/ublas/detail/config.hpp:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` // Cannot continue with an unsupported compiler #if defined(BOOST_UBLAS_UNSUPPORTED_COMPILER) && (BOOST_UBLAS_UNSUPPORTED_COMPILER != 0) #error Your compiler and/or configuration is unsupported by this verions of uBLAS. Define BOOST_UBLAS_UNSUPPORTED_COMPILER=0 to override this message. Boost 1.32.0 includes uBLAS with support for many older compilers. #endif`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Probably, you should obtain a better [compiler](CppCompiler.md) :-(.

 

 

 

 

 





 



