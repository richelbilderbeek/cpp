



 

 

 

 

 

([C++](Cpp.md)) [std::gmtime](CppGmtime.md)
=============================================

 

[std::gmtime](CppGmtime.md) is a [time](CppTime.md)
[function](CppFunction.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <iostream>  int main () {   std::time_t t;   std::time(&t);   const std::tm * const u = std::gmtime(&t);   std::cout     << u->tm_hour     << ":"     << u->tm_min; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [cplusplus.com page about
    std::gmtime](http://www.cplusplus.com/reference/clibrary/ctime/gmtime)

 

 

 

 

 





 



