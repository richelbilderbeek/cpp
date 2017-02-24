
 

 

 

 

 

([C++](Cpp.md)) [std::noshowpos](CppNoshowpos.md)
===================================================

 

[std::noshowpos](CppNoshowpos.md) is a [stream](CppStream.md) modifier
to not prepend positive values by a plus.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int i = 1;   std::cout     << std::showpos   << i << '\n'     << std::noshowpos << i << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------
  ` +1 1`
  ---------

 

 

 

 

 

 

