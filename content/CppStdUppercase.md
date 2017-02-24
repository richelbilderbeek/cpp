
 

 

 

 

 

([C++](Cpp.md)) [std::uppercase](CppUppercase.md)
===================================================

 

[std::uppercase](CppUppercase.md) is a [stream](CppStream.md)
manipulator: when a number's base and/or non-decimal digits are show,
[std::uppercase](CppUppercase.md) displays these in uppercase.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int x = 255; //0xFF   std::cout     << std::showbase     << std::hex     << std::uppercase   << x << '\n'     << std::nouppercase << x << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------
  ` 0XFF 0xff`
  --------------

 

 

 

 

 

 

