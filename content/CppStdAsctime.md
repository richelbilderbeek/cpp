
 

 

 

 

 

([C++](Cpp.md)) [std::asctime](CppAsctime.md)
===============================================

 

[std::asctime](CppAsctime.md) is an [STL](CppStl.md)
[time](CppTime.md) [function](CppFunction.md) to
[convert](CppConvert.md) [std::tm](CppTm.md) to a
[std::string](CppString.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <iostream>  int main () {   std::time_t my_time;    std::time( &my_time );   const std::tm * const time_and_date = std::localtime(&my_time);   std::cout << std::asctime(time_and_date); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

