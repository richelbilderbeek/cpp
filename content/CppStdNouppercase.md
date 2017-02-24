

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::nouppercase](CppNouppercase.htm)
=======================================================

 

[std::nouppercase](CppNouppercase.htm) is a [stream](CppStream.htm)
manipulator: when a number's base and/or non-decimal digits are show,
[std::nouppercase](CppNouppercase.htm) displays these in lowercase.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int x = 255; //0xFF   std::cout     << std::showbase     << std::hex     << std::uppercase   << x << '\n'     << std::nouppercase << x << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------
  ` 0XFF 0xff`
  --------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
