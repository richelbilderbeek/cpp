



 

 

 

 

 

([C++](Cpp.htm)) [std::overflow\_error](CppOverflow_error.htm)
==============================================================

 

[std::overflow\_error](CppOverflow_error.htm) (a [derived
class](CppDerivedClass.htm) from
[std::runtime\_error](CppRuntime_error.htm)) is [thrown](CppThrow.htm)
if a 'mathematical overflow occurs'. I did not yet succeed in producing
such a mathematical overflow.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream> #include <stdexcept>  int main() {   try   {     //Too bad std::fmod does not throw std::overflow_error :-(     const double x = std::fmod(1.0,0.0);     std::cout << x;   }   catch (std::overflow_error& e)   {     //Will not get here :-(     std::cout << e.what();   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------
  ` -nan`
  ---------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
