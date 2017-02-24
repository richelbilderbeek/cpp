



 

 

 

 

 

([C++](Cpp.md)) ![Wt](PicWt.png) [WStringToInt](CppWStringToInt.md)
=====================================================================

 

[WStringToInt](CppWStringToInt.md) is a [convert](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md)
[Wt::WString](CppWString.md) to [integer](CppInt.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <string> #include <Wt/WString>  ///WStringToInt converts Wt::WString to integer ///From http://www.richelbilderbeek.nl/CppWStringToInt.htm int WStringToInt(const Wt::WString& s) {   const std::string t(s.toUTF8());   return std::atoi(t.c_str()); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



