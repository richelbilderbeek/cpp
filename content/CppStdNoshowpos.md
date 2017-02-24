



 

 

 

 

 

([C++](Cpp.htm)) [std::noshowpos](CppNoshowpos.htm)
===================================================

 

[std::noshowpos](CppNoshowpos.htm) is a [stream](CppStream.htm) modifier
to not prepend positive values by a plus.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int i = 1;   std::cout     << std::showpos   << i << '\n'     << std::noshowpos << i << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------
  ` +1 1`
  ---------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
