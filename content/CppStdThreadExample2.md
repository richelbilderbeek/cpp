



 

 

 

 

 

([C++](Cpp.md)) ![C++11](PicCpp11.png) [std::thread example 2: two counting threads using std::mutex](CppThreadExample2.md)
=============================================================================================================================

 

This [std::thread](CppThread.md) examples demonstrates how to use
[std::mutexes](CppMutex.md) to share [std::cout](CppCout.md) nicely,
as in the previous example, [std::thread example 1: two counting
threads](CppThreadExample1.md), the output to [std::cout](CppCout.md)
was messy.

 

-   [Download the Qt Creator project
    'CppThreadExample2' (zip)](CppThreadExample2.zip)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <thread>  void DoCountDown(const int id) {   //static mutex, because each thread its must use the same mutex   static std::mutex mutex;    for (int i=0; i!=10; ++i)   {     ///Let this thread sleep, to give the other thread a chance     std::this_thread::sleep_for(std::chrono::milliseconds(1));      ///Acquire access to std::cout     std::lock_guard<std::mutex> lock(mutex);      ///Write to std::cout     std::cout << "#" << id << ": " << (10-i) << '\n';   } }  int main() {   std::thread t1(DoCountDown,1);   std::thread t2(DoCountDown,2);   t1.join();   t2.join(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` #2: 10 #1: 10 #2: 9 #1: 9 #2: 8 #1: 8 #2: 7 #1: 7 #2: 6 #1: 6 #2: 5 #1: 5 #2: 4 #1: 4 #2: 3 #1: 3 #2: 2 #1: 2 #2: 1 #1: 1`
  ------------------------------------------------------------------------------------------------------------------------------

 

This example is checked for errors in [helgrind example 2: two counting
threads using std::mutex](CppHelgrindExample2.md), where
[helgrind](CppHelgrind.md) is shown to detect no errors.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup's C++0x
    page](http://www2.research.att.com/~bs/C++0xFAQ.html)

 

 

 

 

 





 



