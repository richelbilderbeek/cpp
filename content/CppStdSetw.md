
 

 

 

 

 

([C++](Cpp.md)) [std::setw](CppSetw.md)
=========================================

 

[std::setw](CppSetw.md) (an abbreviation of 'set width') is an
[STL](CppStl.md) [std::iostream](CppIostream.md) manipulator to set
the width of the next output.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iomanip> #include <iostream>  int main() {   const int value = 123;   std::cout     << "12345678\n"     << std::setw(8) << value << '\n'     << std::setfill('x') << std::setw(8) << value << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------
  ` 12345678      123 xxxxx123`
  -------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::setw](http://www.cplusplus.com/reference/iostream/manipulators/setw)

 

 

 

 

 

 

