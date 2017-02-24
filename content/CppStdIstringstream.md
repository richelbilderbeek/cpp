



 

 

 

 

 

([C++](Cpp.htm)) [std::istringstream](CppIstringstream.htm)
===========================================================

 

[std::istringstream](CppIstringstream.htm) is an [STL](CppStl.htm) input
[stream](CppStream.htm) [data type](CppDataType.htm).

 

 

 

 

 

Example: [IsDouble](CppIsDouble.htm)
------------------------------------

 

The example below shows how to [check](CppCheck.htm) if a
[std::string](CppString.htm) can be [converted](CppConvert.htm) to
[double](CppDouble.htm): put the [std::string](CppString.htm) in an
[std::istringstream](CppIstringstream.htm) and try to write it to a
[double](CppDouble.htm). If this fails, the [std::string](CppString.htm)
cannot be [converted](CppConvert.htm) to [double](CppDouble.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream>  //From http://www.richelbilderbeek.nl/CppIsDouble.htm bool IsDouble(const std::string& s) {   std::istringstream i(s);   double temp;   return ( (i >> temp) ? true : false ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
