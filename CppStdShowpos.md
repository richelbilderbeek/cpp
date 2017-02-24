[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::showpos](CppShowpos.htm)
===============================================

 

[std::showpos](CppShowpos.htm) is a [stream](CppStream.htm) modifier to
prepend positive values by a plus.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int i = 1;   std::cout     << std::showpos   << i << '\n'     << std::noshowpos << i << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------
  ` +1 1`
  ---------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
