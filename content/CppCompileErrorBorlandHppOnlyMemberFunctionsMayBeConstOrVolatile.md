[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [borland.hpp: Only member functions may be 'const' or 'volatile'](CppCompileErrorBorlandHppOnlyMemberFunctionsMayBeConstOrVolatile.htm)
========================================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------
  ` [C++ Error] borland.hpp(15): E2310 Only member functions may be 'const' or 'volatile'`
  ------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

[Boost](CppBoost.htm) version: 1.35.0

 

  ------------------------------------------------------
  ` #include <boost/multi_array.hpp>  int main() {  }`
  ------------------------------------------------------

 

The [compiler](CppCompiler.htm) will show you the code of
boost/concept/borland/borland.hpp:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` // Copyright David Abrahams 2006. Distributed under the Boost // Software License, Version 1.0. (See accompanying // file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt) #ifndef BOOST_CONCEPT_DETAIL_BORLAND_DWA2006429_HPP # define BOOST_CONCEPT_DETAIL_BORLAND_DWA2006429_HPP   # include <boost/preprocessor/cat.hpp>   namespace boost { namespace concept {   template <class ModelFnPtr> struct require;   template <class Model> struct require<void(*)(Model)> //THIS LINE {     enum { instantiate = sizeof((((Model*)0)->~Model()), 3) }; };   //More code... `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Probably, you should obtain a better [compiler](CppCompiler.htm) :-(.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
