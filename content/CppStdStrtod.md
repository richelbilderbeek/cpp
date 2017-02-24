

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::strtod](CppStrtod.htm)
=============================================

 

[std::strtod](CppStrtod.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to [convert](CppConvert.htm) a
[std::string](CppString.htm) to [double](CppDouble.htm).

 

 

 

 

 

Example: [ToDouble](CppToDouble.htm)
------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <string>  //From http://www.richelbilderbeek.nl/CppToDouble.htm double ToDouble(const std::string& s) {   return std::strtod(s.c_str(),0); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
