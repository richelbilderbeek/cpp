
 

 

 

 

 

([C++](Cpp.md)) [std::domain\_error](CppDomain_error.md)
==========================================================

 

[std::domain\_error](CppDomain_error.md) is an
[exception](CppException.md) [thrown](CppThrow.md) when a
mathematically invalid domain is used.

 

[std::domain\_error](CppDomain_error.md) is a [derived
class](CppDerivedClass.md) from
[std::logic\_error](CppStdLogic_error.md).
[std::logic\_error](CppStdLogic_error.md) is a [derived
class](CppDerivedClass.md) from [td::exception](CppException.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream> #include <stdexcept>  int main() {   try   {     const double x = std::acos(2.0);     std::cout << x << '\n';   }   catch (std::domain_error& e)   {     std::cout << e.what() << '\n';   }   catch (...)   {     std::cout << "Something unexpected happened" << '\n';   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note: I hoped that [std::domain\_error](CppDomain_error.md) would be
[thrown](CppThrow.md), instead the value 'nan' would be written to the
screen.

 

 

 

 

 

External links
--------------

-   [GCC page about
    std::domain\_error](http://gcc.gnu.org/onlinedocs/libstdc++/libstdc++-html-USERS-4.2/classstd_1_1domain__error.html)

 

 

 

 

 

 

