



 

 

 

 

 

([C++](Cpp.htm)) [ToInt](CppToInt.htm)
======================================

 

[ToInt](CppToInt.htm) is a [convert](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm)
[std::string](CppString.htm) to [int](CppInt.htm).

 

[LexicalCast](CppLexicalCast.htm) and
[boost::lexical\_cast](CppLexical_cast.htm) are more general then
[ToInt](CppToInt.htm) and [convert](CppConvert.htm) a
[std::string](CppString.htm) to any [data type](CppDataType.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  ///ToInt converts a std::string to an integer ///From http://www.richelbilderbeek.nl/CppToInt.htm const int ToInt(const std::string& s) {   return std::atoi(s.c_str()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



