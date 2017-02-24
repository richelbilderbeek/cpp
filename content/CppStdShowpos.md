



 

 

 

 

 

([C++](Cpp.md)) [std::showpos](CppShowpos.md)
===============================================

 

[std::showpos](CppShowpos.md) is a [stream](CppStream.md) modifier to
prepend positive values by a plus.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int i = 1;   std::cout     << std::showpos   << i << '\n'     << std::noshowpos << i << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------
  ` +1 1`
  ---------

 

 

 

 

 





 



