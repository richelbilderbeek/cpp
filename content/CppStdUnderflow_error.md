

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::underflow\_error](CppUnderflow_error.htm)
================================================================

 

[std::underflow\_error](CppUnderflow_error.htm) (a [derived
class](CppDerivedClass.htm) from
[std::runtime\_error](CppRuntime_error.htm)) is [thrown](CppThrow.htm)
if a 'mathematical underflow occurs'. I did not yet succeed in producing
such a mathematical underflow.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <stack> #include <stdexcept>  int main() {   std::stack<int> s;    try   {     //Too bad, pop does not throw std::underflow_error :-(     s.pop();   }   catch (std::underflow_error& e)   {     //Too bad, will not get here :-(     std::cout << e.what();   } }  `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
