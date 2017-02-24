



 

 

 

 

 

([C++](Cpp.htm)) [std::tm](CppTm.htm)
=====================================

 

[std::tm](CppTm.htm) is an [STL](CppStl.htm) [time](CppTime.htm)
[class](CppClass.htm) to contain a [date](CppTime.htm) and
[time](CppTime.htm).

 

 

 

 

 

Example: [GetToday](CppGetToday.htm)
------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <iostream>  int main () {   std::time_t my_time;   std::time( &my_time );   const std::tm * const time_and_date = std::localtime(&my_time);   std::cout << std::asctime(time_and_date); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Today's screen output:

 

  -----------------------------
  ` Sun Aug  8 09:01:41 2010`
  -----------------------------

 

 

 

 

 





 



