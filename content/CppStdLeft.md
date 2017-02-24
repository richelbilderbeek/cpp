



 

 

 

 

 

([C++](Cpp.htm)) [std::left](CppLeft.htm)
=========================================

 

[std::left](CppLeft.htm) is a [stream](CppStream.htm) manipulator to let
the minus and the digits of a negative number both be put at the left of
the padding width.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iomanip> #include <iostream>  int main () {   const int x = -12;   std::cout     << std::setw(4)  << std::internal << x << '\n'     << std::setw(4)  << std::left     << x << '\n'     << std::setw(4)  << std::right    << x << '\n'; } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------
  ` - 12 -12   -12`
  -------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
