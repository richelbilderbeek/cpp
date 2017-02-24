



 

 

 

 

 

([C++](Cpp.htm)) [boost::lexical\_cast](CppLexical_cast.htm)
============================================================

 

[boost::lexical\_cast](CppLexical_cast.htm) is a [Boost](CppBoost.htm)
[function](CppFunction.htm) to [convert](CppConvert.htm) to/from
[std::string](CppString.htm) to/from (possibly) any [data
type](CppDataType.htm). [CanLexicalCast](CppCanLexicalCast.htm) can
[check](CppCheck.htm) if this [conversion](CppConvert.htm) is possible.

 

The [C++11](Cpp11.htm) equivalent to [convert](CppConvert.htm) to a
[std::string](CppString.htm) is [std::to\_string](CppTo_string.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <boost/lexical_cast.hpp>  int main() {   const std::string s = "12.34";   const double d = boost::lexical_cast<double>(s); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[LexicalCast](CppLexicalCast.htm) serves the same purpose as
[boost::lexical\_cast](CppLexical_cast.htm), but does not use
[Boost](CppBoost.htm) and does not [throw](CppThrow.htm) an
[exception](CppException.htm) when conversion fails. Note that there are
differences between [LexicalCast](CppLexicalCast.htm) and
[boost::lexical\_cast](CppLexical_cast.htm), as
[boost::lexical\_cast](CppCanLexicalCast.htm) is more strict.

 

 

 

 

 

External links
--------------

 

-   [Boost's page about
    boost::lexical\_cast (v.1.35.0)](http://www.boost.org/doc/libs/1_35_0/libs/conversion/lexical_cast.htm)

 

 

 

 

 





 



