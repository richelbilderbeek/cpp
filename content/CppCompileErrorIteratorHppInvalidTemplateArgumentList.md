

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [iterator.hpp: Invalid template argument list](CppCompileErrorIteratorHppInvalidTemplateArgumentList.htm)
==========================================================================================================================

 

[Compile error](CppCompileError.htm).

 

Full error message
------------------

 

  -----------------------------------------------------------------------
  ` [C++ Error] iterator.hpp(62): E2401 Invalid template argument list`
  -----------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

-   IDE: [C++ Builder](CppBuilder.htm) 6.0
-   [Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157
-   Boost version: 1.35.0.

 

  ---------------------------------
  ` #include <boost/foreach.hpp>`
  ---------------------------------

 

 

 

 

 

Which takes you to the following line in
'include/boost/range/iterator.hpp':

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` typedef BOOST_RANGE_DEDUCED_TYPENAME mpl::eval_if_c< is_const<C>::value, range_const_iterator< typename remove_const<C>::type >, range_mutable_iterator<C> >::type type;`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

This compiler is not supported by Boost. Change to another compiler.

 

 

 

 

 

Note
----

 

This does not work:

 

  ---------------------------------------------------------
  ` #define BOOST_MSVC 1310 #include <boost/foreach.hpp>`
  ---------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
