



 

 

 

 

 

([C++](Cpp.htm)) [std::asctime](CppAsctime.htm)
===============================================

 

[std::asctime](CppAsctime.htm) is an [STL](CppStl.htm)
[time](CppTime.htm) [function](CppFunction.htm) to
[convert](CppConvert.htm) [std::tm](CppTm.htm) to a
[std::string](CppString.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <iostream>  int main () {   std::time_t my_time;    std::time( &my_time );   const std::tm * const time_and_date = std::localtime(&my_time);   std::cout << std::asctime(time_and_date); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



