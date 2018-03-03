
 

 

 

 

 

([C++](Cpp.md)) [DoubleToStr](CppDoubleToStr.md)
==================================================

 

[DoubleToStr](CppDoubleToStr.md) is a [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) an
[double](CppDouble.md) to [std::string](CppStdString.md). To
[convert](CppConvert.md) a [std::string](CppStdString.md) to
[double](CppDouble.md), use [StrToDouble](CppStrToDouble.md).

 

[DoubleToStr](CppDoubleToStr.md) has multiple versions:

-   ![C++98](PicCpp98.png)![STL](PicStl.png)
    [DoubleToStr](CppDoubleToStr.md) using the [C++98](Cpp98.md) and
    the [STL](CppStl.md)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [DoubleToStr](CppDoubleToStr.md) using the [C++98](Cpp98.md) and
    the [Boost](CppBoost.md) [library](CppLibrary.md)
-   ![C++11](PicCpp11.png)![STL](PicStl.png)
    [DoubleToStr](CppDoubleToStr.md) using the [C++11](Cpp11.md) and
    the [STL](CppStl.md)

 

-   [Download the Qt Creator project
    'CppDoubleToStr' (zip)](CppDoubleToStr.zip)

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) [DoubleToStr](CppDoubleToStr.md) using the [C++98](Cpp98.md) and the [STL](CppStl.md)
---------------------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <stdexcept> #include <sstream>  //From http://www.richelbilderbeek.nl/CppDoubleToStr.htm const std::string DoubleToStr(const double x) {   std::ostringstream s;   if (!(s << x)) throw std::logic_error("DoubleToStr failed");   return s.str(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The [code snippet](CppCodeSnippets.md) above was modified from [the C++
FAQ Lite](http://www.parashift.com/c++-faq-lite).

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) [DoubleToStr](CppDoubleToStr.md) using the [C++98](Cpp98.md) and the [Boost](CppBoost.md) [library](CppLibrary.md)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <boost/lexical_cast.hpp>  //From http://www.richelbilderbeek.nl/CppDoubleToStr.htm const std::string DoubleToStr(const double x) {   return boost::lexical_cast<std::string>(x); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) [DoubleToStr](CppDoubleToStr.md) using the [C++11](Cpp11.md) and the [STL](CppStl.md)
---------------------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  //From http://www.richelbilderbeek.nl/CppDoubleToStr.htm const std::string DoubleToStr(const double x) {   return std::to_string(x); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [C++ FAQ lite page about double to std::string
    conversion](https://isocpp.org/wiki/faq/misc-technical-issues#convert-num-to-string)

 

 

 

 

 

 

