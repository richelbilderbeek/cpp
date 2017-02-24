
 

 

 

 

 

([C++](Cpp.md)) [std::showbase](CppShowbase.md)
=================================================

 

[std::showbase](CppShowbase.md) is a [stream](CppStream.md)
manipulator to show the number system base. For example, the
(hexidecimal) value of '0x11' will be displayed as '0x11'.

 

The example below shows how to display an [integer](CppInt.md) in
hexadecimal, octal and decimal with or without showing the number system
base.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main () {   const int x = 100;   std::cout     << "The value of x in hex: "     << std::hex     << std::showbase     << x << '\n';   std::cout     << "The value of x in oct: "     << std::oct     << std::showbase     << x << '\n';   std::cout     << "The value of x in dec: "     << std::dec     << std::noshowbase     << x << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------------------------------------------------------------------
  ` The value of x in hex: 0x64 The value of x in oct: 0144 The value of x in dec: 100`
  ---------------------------------------------------------------------------------------

 

 

 

 

 

 

