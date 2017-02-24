[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::time\_t](CppTime_t.htm)
==============================================

 

[std::time\_t](CppTime_t.htm) is an [STL](CppStl.htm) [data
type](CppDataType.htm) for [time](CppTime.htm).

 

 

 

 

 

Example
-------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime> #include <iostream>  int main() {   std::time_t my_time_before;   std::time( &my_time_before );    std::system("./Pause");    std::time_t my_time_after;   std::time( &my_time_after );    std::cout << std::difftime(my_time_after,my_time_before) << '\n'; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
