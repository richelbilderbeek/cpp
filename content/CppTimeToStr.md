
 

 

 

 

 

([C++](Cpp.md)) [TimeToStr](CppTimeToStr.md)
==============================================

 

[TimeToStr](CppTimeToStr.md) is a [time](CppTime.md)
[conversion](CppConvert.md) [code snippet](CppCodeSnippets.md) to
[convert](CppConvert.md) [std::time\_t](CppStdTime_t.md) to
[std::string](CppStdString.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <string>  ///TimeToStr converts std::time_t to std::string. ///From http://www.richelbilderbeek.nl/CppTimeToStr.htm const std::string TimeToStr(const std::time_t& time) {   return std::ctime( &time); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

