

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::chrono](CppChrono.htm)
=============================================

 

[std::chrono](CppChrono.htm) is a [namespace](CppNamespace.htm) for
[time](CppTime.htm)-related [functions](CppFunction.htm) and
[classes](CppClass.htm). [std::chrono](CppChrono.htm) is available in
the C++0x [standard](CppStandard.htm) after
[\#including](CppInclude.htm) [chrono.h](CppChronoH.htm).

 

 

 

 

 

Example
-------

 

This example is from [std::thread example 2: two counting threads using
std::mutex](CppThreadExample2.htm). See [std::thread example 2: two
counting threads using std::mutex](CppThreadExample2.htm) for further
details.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <thread>  void DoCountDown(const int id) {   //static mutex, because each thread its must use the same mutex   static std::mutex mutex;    for (int i=0; i!=10; ++i)   {     ///Let this thread sleep, to give the other thread a chance     std::this_thread::sleep_for(std::chrono::milliseconds(1));      ///Acquire access to std::cout     std::lock_guard<std::mutex> lock(mutex);      ///Write to std::cout     std::cout << "#" << id << ": " << (10-i) << '\n';   } }  int main() {   std::thread t1(DoCountDown,1);   std::thread t2(DoCountDown,2);   t1.join();   t2.join(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` #2: 10 #1: 10 #2: 9 #1: 9 #2: 8 #1: 8 #2: 7 #1: 7 #2: 6 #1: 6 #2: 5 #1: 5 #2: 4 #1: 4 #2: 3 #1: 3 #2: 2 #1: 2 #2: 1 #1: 1`
  ------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
