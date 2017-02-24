[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [DoubleToStr](CppDoubleToStr.htm)
==================================================

 

[DoubleToStr](CppDoubleToStr.htm) is a [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) an
[double](CppDouble.htm) to [std::string](CppString.htm). To
[convert](CppConvert.htm) a [std::string](CppString.htm) to
[double](CppDouble.htm), use [StrToDouble](CppStrToDouble.htm).

 

[DoubleToStr](CppDoubleToStr.htm) has multiple versions:

-   ![C++98](PicCpp98.png)![STL](PicStl.png)
    [DoubleToStr](CppDoubleToStr.htm) using the [C++98](Cpp98.htm) and
    the [STL](CppStl.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [DoubleToStr](CppDoubleToStr.htm) using the [C++98](Cpp98.htm) and
    the [Boost](CppBoost.htm) [library](CppLibrary.htm)
-   ![C++11](PicCpp11.png)![STL](PicStl.png)
    [DoubleToStr](CppDoubleToStr.htm) using the [C++11](Cpp11.htm) and
    the [STL](CppStl.htm)

 

-   [Download the Qt Creator project
    'CppDoubleToStr' (zip)](CppDoubleToStr.zip)

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) [DoubleToStr](CppDoubleToStr.htm) using the [C++98](Cpp98.htm) and the [STL](CppStl.htm)
---------------------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <stdexcept> #include <sstream>  //From http://www.richelbilderbeek.nl/CppDoubleToStr.htm const std::string DoubleToStr(const double x) {   std::ostringstream s;   if (!(s << x)) throw std::logic_error("DoubleToStr failed");   return s.str(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The [code snippet](CppCodeSnippets.htm) above was modified from [the C++
FAQ Lite](http://www.parashift.com/c++-faq-lite).

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) [DoubleToStr](CppDoubleToStr.htm) using the [C++98](Cpp98.htm) and the [Boost](CppBoost.htm) [library](CppLibrary.htm)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <boost/lexical_cast.hpp>  //From http://www.richelbilderbeek.nl/CppDoubleToStr.htm const std::string DoubleToStr(const double x) {   return boost::lexical_cast<std::string>(x); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) [DoubleToStr](CppDoubleToStr.htm) using the [C++11](Cpp11.htm) and the [STL](CppStl.htm)
---------------------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  //From http://www.richelbilderbeek.nl/CppDoubleToStr.htm const std::string DoubleToStr(const double x) {   return std::to_string(x); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [C++ FAQ lite page about double to std::string
    conversion](http://www.parashift.com/c++-faq-lite/misc-technical-issues.html#faq-39.1)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
