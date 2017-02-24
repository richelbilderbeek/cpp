

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Qt Creator macro](CppQtCreatorMacro.htm)
==========================================================

 

[Qt Creator](CppQtCreator.htm) has some [macro's](CppMacro.htm) supplied
( although these are actually supplied by the [GCC](CppGcc.htm)).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout     << "Date: "     << __DATE__     << '\n'     << "File: "     << __FILE__     << '\n'     << "Function: " << __FUNCTION__ << '\n'     << "Line: "     << __LINE__     << '\n'     << "Time: "     << __TIME__     << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -----------------------------------------------------------------------------------------
  ` Date: Dec 14 2010 File: ../CppQtMacro/main.cpp Function: main Line: 9 Time: 13:09:53`
  -----------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
