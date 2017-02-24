



 

 

 

 

 

([C++](Cpp.md)) [std::overflow\_error](CppOverflow_error.md)
==============================================================

 

[std::overflow\_error](CppOverflow_error.md) (a [derived
class](CppDerivedClass.md) from
[std::runtime\_error](CppRuntime_error.md)) is [thrown](CppThrow.md)
if a 'mathematical overflow occurs'. I did not yet succeed in producing
such a mathematical overflow.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream> #include <stdexcept>  int main() {   try   {     //Too bad std::fmod does not throw std::overflow_error :-(     const double x = std::fmod(1.0,0.0);     std::cout << x;   }   catch (std::overflow_error& e)   {     //Will not get here :-(     std::cout << e.what();   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------
  ` -nan`
  ---------

 

 

 

 

 





 



