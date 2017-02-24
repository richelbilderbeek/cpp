

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StrToDouble](CppStrToDouble.htm)
==================================================

 

[StrToDouble](CppStrToDouble.htm) is a [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) a
[std::string](CppString.htm) to [double](CppDouble.htm).
[DoubleToStr](CppDoubleToStr.htm) [converts](CppConvert.htm) an
[double](CppDouble.htm) to [std::string](CppString.htm).

 

[StrToDouble](CppStrToDouble.htm) has multiple versions:

-   ![C++98](PicCpp98.png)![STL](PicStl.png)
    [StrToDouble](CppStrToDouble.htm) using the [C++98](Cpp98.htm) and
    the [STL](CppStl.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [StrToDouble](CppStrToDouble.htm) using the [C++98](Cpp98.htm) and
    the [Boost](CppBoost.htm) [library](CppLibrary.htm)
-   ![C++11](PicCpp11.png)![STL](PicStl.png)
    [StrToDouble](CppStrToDouble.htm) using the [C++11](Cpp11.htm) and
    the [STL](CppStl.htm)

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) [StrToDouble](CppStrToDouble.htm) using the [C++98](Cpp98.htm) and the [STL](CppStl.htm)
---------------------------------------------------------------------------------------------------------------------------------

 

Uses [std::atof](CppAtof.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  //From http://www.richelbilderbeek.nl/CppStrToDouble.htm const double StrToDouble(const std::string& s) {   return std::atof(s.c_str()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) [StrToDouble](CppStrToDouble.htm) using the [C++98](Cpp98.htm) and the [Boost](CppBoost.htm) [library](CppLibrary.htm)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Uses [boost::lexical\_cast](CppLexical_cast.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <boost/lexical_cast.hpp>  const double StrToDouble(const std::string& s) {   return boost::lexical_cast<double>(s); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) [StrToDouble](CppStrToDouble.htm) using the [C++11](Cpp11.htm) and the [STL](CppStl.htm)
---------------------------------------------------------------------------------------------------------------------------------

 

Uses [std::stod](CppStod.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  //From http://www.richelbilderbeek.nl/CppStrToDouble.htm double StrToDouble(const std::string& s) {   return std::stod(s); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[StrToDouble](CppStrToDouble.htm) testing code
----------------------------------------------

 

-   [Download the Qt Creator project
    'CppStrToDouble' (zip)](CppStrToDouble.zip)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> //From http://www.richelbilderbeek.nl/CppStrToDouble.htm double StrToDoubleStl(const std::string& s) {   return std::atof(s.c_str()); }  //From http://www.richelbilderbeek.nl/CppStrToDouble.htm double StrToDoubleCpp0x(const std::string& s) {   return std::stof(s); }  #include <boost/lexical_cast.hpp> //From http://www.richelbilderbeek.nl/CppStrToDouble.htm double StrToDoubleBoost(const std::string& s) {   return boost::lexical_cast<double>(s); }  bool CanStrToDoubleStl(const std::string& s) {   const double i = std::atof(s.c_str());   return i!=0.0 || s=="0.0"; }  double CanStrToDoubleCpp0x(const std::string& s) {   try { std::stof(s); }   catch (std::exception&) { return false; }   return true; }  double CanStrToDoubleBoost(const std::string& s) {   try { boost::lexical_cast<double>(s); }   catch (boost::bad_lexical_cast&) { return false; }   return true; }  #include <cassert> ///fuzzy_equal_to is a predicate to test two doubles for equality ///with a certain tolerance. A tolerance of 0.0 denotes that ///an exact match is requested. Note that the value of 0.0 cannot ///be compared fuzzily. //From http://www.richelbilderbeek.nl/CppFuzzy_equal_to.htm struct fuzzy_equal_to   : public std::binary_function<double,double,bool> {   fuzzy_equal_to(const double tolerance = 0.01)     : m_tolerance(tolerance)   {     assert(tolerance >= 0.0);   }   bool operator()(const double lhs, const double rhs) const   {     return rhs > (1.0 - m_tolerance) * lhs         && rhs < (1.0 + m_tolerance) * lhs;   }   const double m_tolerance; };  int main() {   assert(!CanStrToDoubleStl("a"));   assert(!CanStrToDoubleCpp0x("a"));   assert(!CanStrToDoubleBoost("a"));   assert(CanStrToDoubleStl("0.0"));   assert(CanStrToDoubleCpp0x("0.0"));   assert(CanStrToDoubleBoost("0.0"));   assert(CanStrToDoubleStl("123.456"));   assert(CanStrToDoubleCpp0x("123.456"));   assert(CanStrToDoubleBoost("123.456"));   const std::string s = "123.456";   assert(fuzzy_equal_to(0.00001)(StrToDoubleStl(s),StrToDoubleCpp0x(s)));   assert(fuzzy_equal_to(0.00001)(StrToDoubleStl(s),StrToDoubleBoost(s))); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
