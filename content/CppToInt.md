



 

 

 

 

 

([C++](Cpp.md)) [ToInt](CppToInt.md)
======================================

 

[ToInt](CppToInt.md) is a [convert](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md)
[std::string](CppString.md) to [int](CppInt.md).

 

[LexicalCast](CppLexicalCast.md) and
[boost::lexical\_cast](CppLexical_cast.md) are more general then
[ToInt](CppToInt.md) and [convert](CppConvert.md) a
[std::string](CppString.md) to any [data type](CppDataType.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  ///ToInt converts a std::string to an integer ///From http://www.richelbilderbeek.nl/CppToInt.htm const int ToInt(const std::string& s) {   return std::atoi(s.c_str()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



