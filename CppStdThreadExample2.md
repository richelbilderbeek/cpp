[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![C++11](PicCpp11.png) [std::thread example 2: two counting threads using std::mutex](CppThreadExample2.htm)
=============================================================================================================================

 

This [std::thread](CppThread.htm) examples demonstrates how to use
[std::mutexes](CppMutex.htm) to share [std::cout](CppCout.htm) nicely,
as in the previous example, [std::thread example 1: two counting
threads](CppThreadExample1.htm), the output to [std::cout](CppCout.htm)
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
threads using std::mutex](CppHelgrindExample2.htm), where
[helgrind](CppHelgrind.htm) is shown to detect no errors.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup's C++0x
    page](http://www2.research.att.com/~bs/C++0xFAQ.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
