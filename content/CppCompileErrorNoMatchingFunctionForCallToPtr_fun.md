[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [No matching function for call to 'ptr\_fun'](CppCompileErrorNoMatchingFunctionForCallToPtr_fun.htm)
=====================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------
  ` MyMain.cpp:26: error: no matching function for call to ‘ptr_fun(<unresolved overloaded function type>)’`
  ------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 1.2.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cctype> #include <string>  //From http://www.richelbilderbeek.nl/CppStrToUpper.htm const std::string StrToUpper(std::string s) {   std::transform(s.begin(), s.end(), s.begin(),std::ptr_fun(std::toupper));   return s; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Explicitly add the template parameters:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cctype> #include <string>  //From http://www.richelbilderbeek.nl/CppStrToUpper.htm const std::string StrToUpper(std::string s) {   std::transform(s.begin(), s.end(), s.begin(),std::ptr_fun<int,int>(std::toupper));   return s; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
