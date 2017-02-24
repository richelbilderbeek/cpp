



 

 

 

 

 

([C++](Cpp.htm)) [std::domain\_error](CppDomain_error.htm)
==========================================================

 

[std::domain\_error](CppDomain_error.htm) is an
[exception](CppException.htm) [thrown](CppThrow.htm) when a
mathematically invalid domain is used.

 

[std::domain\_error](CppDomain_error.htm) is a [derived
class](CppDerivedClass.htm) from
[std::logic\_error](CppLogic_error.htm).
[std::logic\_error](CppLogic_error.htm) is a [derived
class](CppDerivedClass.htm) from [td::exception](CppException.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream> #include <stdexcept>  int main() {   try   {     const double x = std::acos(2.0);     std::cout << x << '\n';   }   catch (std::domain_error& e)   {     std::cout << e.what() << '\n';   }   catch (...)   {     std::cout << "Something unexpected happened" << '\n';   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note: I hoped that [std::domain\_error](CppDomain_error.htm) would be
[thrown](CppThrow.htm), instead the value 'nan' would be written to the
screen.

 

 

 

 

 

External links
--------------

-   [GCC page about
    std::domain\_error](http://gcc.gnu.org/onlinedocs/libstdc++/libstdc++-html-USERS-4.2/classstd_1_1domain__error.html)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
