
 

 

 

 

 

([C++](Cpp.md)) [boost::lexical\_cast](CppLexical_cast.md)
============================================================

 

[boost::lexical\_cast](CppLexical_cast.md) is a [Boost](CppBoost.md)
[function](CppFunction.md) to [convert](CppConvert.md) to/from
[std::string](CppStdString.md) to/from (possibly) any [data
type](CppDataType.md). [CanLexicalCast](CppCanLexicalCast.md) can
[check](CppCheck.md) if this [conversion](CppConvert.md) is possible.

 

The [C++11](Cpp11.md) equivalent to [convert](CppConvert.md) to a
[std::string](CppStdString.md) is [std::to\_string](CppTo_string.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <boost/lexical_cast.hpp>  int main() {   const std::string s = "12.34";   const double d = boost::lexical_cast<double>(s); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[LexicalCast](CppLexicalCast.md) serves the same purpose as
[boost::lexical\_cast](CppLexical_cast.md), but does not use
[Boost](CppBoost.md) and does not [throw](CppThrow.md) an
[exception](CppException.md) when conversion fails. Note that there are
differences between [LexicalCast](CppLexicalCast.md) and
[boost::lexical\_cast](CppLexical_cast.md), as
[boost::lexical\_cast](CppCanLexicalCast.md) is more strict.

 

 

 

 

 

External links
--------------

 

-   [Boost's page about
    boost::lexical\_cast (v.1.35.0)](http://www.boost.org/doc/libs/1_35_0/libs/conversion/lexical_cast.md)

 

 

 

 

 

 

