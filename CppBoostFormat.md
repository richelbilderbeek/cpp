[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::format](CppFormat.htm)
===============================================

 

[boost::format](CppFormat.htm) is the type-safe alternative of
[std::printf](CppPrintf.htm)(see example below).

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdio> #include <iostream> #include <boost/format.hpp>  int main() {   //Correct   std::printf("(x,y) = (%1+5d,%2+5d) \n",-1,2);   std::cout     << boost::format("(x,y) = (%1+5d,%2+5d) \n") % -1 % 2;    //Incorrect   std::printf("(x,y) = (%1+5d,%2+5d) \n",-1.5,2.5);   std::cout     << boost::format("(x,y) = (%1+5d,%2+5d) \n") % -1.5 % 2.5; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ----------------------------------------------------------------------------------------------
  ` (x,y) = (   -1, +2) (x,y) = (   -1, +2) (x,y) = (   +0,-1074266112) (x,y) = ( -1.5, +2.5)`
  ----------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Boost page about
    boost::format](http://www.boost.org/doc/libs/1_44_0/libs/format/index.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
