



 

 

 

 

 

([C++](Cpp.md)) ![Wt](PicWt.png) [IntToWString](CppIntToWString.md)
=====================================================================

 

[IntToWString](CppIntToWString.md) is a [convert](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) an
[integer](CppInt.md) to a [Wt::WString](CppWString.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream> #include <stdexcept> #include <string> #include <Wt/WString>  ///IntToWString converts integer to Wt::WString ///From http://www.richelbilderbeek.nl/CppIntToWString.htm const Wt::WString IntToWString(const int i) {   std::ostringstream s;   if (!(s << i)) throw std::logic_error("IntToWString failed");   return Wt::WString(s.str()); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



