



 

 

 

 

 

([C++](Cpp.htm)) [TimeToStr](CppTimeToStr.htm)
==============================================

 

[TimeToStr](CppTimeToStr.htm) is a [time](CppTime.htm)
[conversion](CppConvert.htm) [code snippet](CppCodeSnippets.htm) to
[convert](CppConvert.htm) [std::time\_t](CppTime_t.htm) to
[std::string](CppString.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <string>  ///TimeToStr converts std::time_t to std::string. ///From http://www.richelbilderbeek.nl/CppTimeToStr.htm const std::string TimeToStr(const std::time_t& time) {   return std::ctime( &time); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



