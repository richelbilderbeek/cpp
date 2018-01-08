
 

 

 

 

 

([C++](Cpp.md)) [std::istringstream](CppStdIstringstream.md)
===========================================================

 

[std::istringstream](CppStdIstringstream.md) is an [STL](CppStl.md) input
[stream](CppStream.md) [data type](CppDataType.md).

 

 

 

 

 

Example: [IsDouble](CppIsDouble.md)
------------------------------------

 

The example below shows how to [check](CppCheck.md) if a
[std::string](CppStdString.md) can be [converted](CppConvert.md) to
[double](CppDouble.md): put the [std::string](CppStdString.md) in an
[std::istringstream](CppStdIstringstream.md) and try to write it to a
[double](CppDouble.md). If this fails, the [std::string](CppStdString.md)
cannot be [converted](CppConvert.md) to [double](CppDouble.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream>  //From http://www.richelbilderbeek.nl/CppIsDouble.htm bool IsDouble(const std::string& s) {   std::istringstream i(s);   double temp;   return ( (i >> temp) ? true : false ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

