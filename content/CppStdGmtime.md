[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::gmtime](CppGmtime.htm)
=============================================

 

[std::gmtime](CppGmtime.htm) is a [time](CppTime.htm)
[function](CppFunction.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <iostream>  int main () {   std::time_t t;   std::time(&t);   const std::tm * const u = std::gmtime(&t);   std::cout     << u->tm_hour     << ":"     << u->tm_min; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [cplusplus.com page about
    std::gmtime](http://www.cplusplus.com/reference/clibrary/ctime/gmtime)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
