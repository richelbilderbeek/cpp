

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::system](CppSystem.htm)
=============================================

 

[std::system](CppSystem.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to make a call to your (operating) system.

 

 

 

 

 

[std::system](CppSystem.htm) example
------------------------------------

 

In this example, the (DOS) command 'dir' is executed and its output
written to the file output.txt.

 

  ------------------------------------------------------------------------------
  ` #include <cstdlib>  int main() {   std::system("dir *.* > output.txt"); }`
  ------------------------------------------------------------------------------

 

 

 

 

 

[std::system](CppSystem.htm) and [boost::timer](CppTimer.htm) does not work
---------------------------------------------------------------------------

 

The code below shows a program that starts a
[boost::timer](CppTimer.htm), starts a program that waits 10 seconds,
and then displays the time passed. This will always display the time of
0.0 seconds.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream> #include <boost/timer.hpp>  int main() {   boost::timer t;   std::system("./Pause");   std::cout << t.elapsed() << '\n'; } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The solution is to request the actual time before and after:

 

 

 

 

 

### Solution using the [STL](CppStl.htm)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime> #include <iostream>  int main() {   std::time_t my_time_before;   std::time( &my_time_before );    std::system("./Pause");    std::time_t my_time_after;   std::time( &my_time_after );    std::cout << std::difftime(my_time_after,my_time_before) << '\n'; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### Solution using the [Boost.Date\_Time](CppDate_Time.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream> #include <boost/date_time/posix_time/posix_time.hpp>  int main() {   const boost::posix_time::ptime before     = boost::posix_time::second_clock::local_time();    std::system("./Pause");    const boost::posix_time::ptime after     = boost::posix_time::second_clock::local_time();    const boost::posix_time::time_duration elapsed = after - before;   std::cout << elapsed.total_seconds() << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
