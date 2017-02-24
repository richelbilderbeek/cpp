



 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [IntToWString](CppIntToWString.htm)
=====================================================================

 

[IntToWString](CppIntToWString.htm) is a [convert](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) an
[integer](CppInt.htm) to a [Wt::WString](CppWString.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream> #include <stdexcept> #include <string> #include <Wt/WString>  ///IntToWString converts integer to Wt::WString ///From http://www.richelbilderbeek.nl/CppIntToWString.htm const Wt::WString IntToWString(const int i) {   std::ostringstream s;   if (!(s << i)) throw std::logic_error("IntToWString failed");   return Wt::WString(s.str()); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
