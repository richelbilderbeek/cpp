[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::setw](CppSetw.htm)
=========================================

 

[std::setw](CppSetw.htm) (an abbreviation of 'set width') is an
[STL](CppStl.htm) [std::iostream](CppIostream.htm) manipulator to set
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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
