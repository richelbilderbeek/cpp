



 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [WStringToInt](CppWStringToInt.htm)
=====================================================================

 

[WStringToInt](CppWStringToInt.htm) is a [convert](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm)
[Wt::WString](CppWString.htm) to [integer](CppInt.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <string> #include <Wt/WString>  ///WStringToInt converts Wt::WString to integer ///From http://www.richelbilderbeek.nl/CppWStringToInt.htm int WStringToInt(const Wt::WString& s) {   const std::string t(s.toUTF8());   return std::atoi(t.c_str()); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
