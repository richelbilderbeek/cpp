



 

 

 

 

 

([C++](Cpp.md)) [borland.hpp: Only member functions may be 'const' or 'volatile'](CppCompileErrorBorlandHppOnlyMemberFunctionsMayBeConstOrVolatile.md)
========================================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------
  ` [C++ Error] borland.hpp(15): E2310 Only member functions may be 'const' or 'volatile'`
  ------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

[Boost](CppBoost.md) version: 1.35.0

 

  ------------------------------------------------------
  ` #include <boost/multi_array.hpp>  int main() {  }`
  ------------------------------------------------------

 

The [compiler](CppCompiler.md) will show you the code of
boost/concept/borland/borland.hpp:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` // Copyright David Abrahams 2006. Distributed under the Boost // Software License, Version 1.0. (See accompanying // file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt) #ifndef BOOST_CONCEPT_DETAIL_BORLAND_DWA2006429_HPP # define BOOST_CONCEPT_DETAIL_BORLAND_DWA2006429_HPP   # include <boost/preprocessor/cat.hpp>   namespace boost { namespace concept {   template <class ModelFnPtr> struct require;   template <class Model> struct require<void(*)(Model)> //THIS LINE {     enum { instantiate = sizeof((((Model*)0)->~Model()), 3) }; };   //More code... `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Probably, you should obtain a better [compiler](CppCompiler.md) :-(.

 

 

 

 

 





 



