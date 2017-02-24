



 

 

 

 

 

([C++](Cpp.md)) [std::localtime](CppTm.md)
============================================

 

[std::localtime](CppTm.md) is an [STL](CppStl.md) [time](CppTime.md)
[function](CppFunction.md) to obtain the local [date](CppTime.md) and
[time](CppTime.md).

 

 

 

 

 

Example: [GetToday](CppGetToday.md)
------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <iostream>  int main () {   std::time_t my_time;   std::time( &my_time );   const std::tm * const time_and_date = std::localtime(&my_time);   std::cout << std::asctime(time_and_date); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Today's screen output:

 

  -----------------------------
  ` Sun Aug  8 09:01:41 2010`
  -----------------------------

 

 

 

 

 





 



