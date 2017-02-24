

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::setiosflags](CppSetiosflags.htm)
=======================================================

 

[std::setiosflags](CppSetiosflags.htm) (an abbreviation of 'set
input/output [stream](CppStream.htm) flags') is a
[stream](CppStream.htm) modifier.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iomanip> #include <iostream>  int main() {   const double x = 12.34;   std::cout     << std::setiosflags(std::ios::scientific)     << x << '\n'     << std::setiosflags(std::ios::fixed)     << x << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -----------------------
  ` 1.234000e+01 12.34`
  -----------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
