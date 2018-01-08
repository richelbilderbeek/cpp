
 

 

 

 

 

([C++](Cpp.md)) ![C++11](PicCpp11.png) [std::thread example 1: two counting threads](CppThreadExample1.md)
============================================================================================================

 

This [std::thread](CppThread.md) examples shows the code and screen
output of two threads counting down. Below it, the code is discussed in
more detail.

 

-   [Download the Qt Creator project
    'CppThreadExample1' (zip)](CppThreadExample1.zip)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <thread>  void DoCountDown(const int id) {   for (int i=0; i!=10; ++i)   {     std::cout << "#" << id << ": " << (10-i) << '\n';   } }  int main() {   std::thread t1(DoCountDown,1);   std::thread t2(DoCountDown,2);   t1.join();   t2.join(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` ##12: : 10 10# #1: 29 : #9 #12: : 8 #8 2: #7 #12: : 7 #61 : #6 #21: : 5 5#1 : #4 #2: 14 : #3 #21: : 2 3# 1#: 2: 21  #2: 1`
  ------------------------------------------------------------------------------------------------------------------------------

 

Note the following about the code:

-   Calling [std::thread](CppThread.md)::join denotes 'wait for the
    [std::thread](CppThread.md) to terminate' \[1\]
-   It is important that we wait for the [std::thread](CppThread.md) to
    terminate, because 'when a [std::thread](CppThread.md) goes out of
    [scope](CppScope.md) the program is
    [std::terminate](CppStdTerminate.md)()d unless its task has completed'
    \[1\]
-   Both [std::threads](CppThread.md) do not wait for the other to
    finish writing to [std::cout](CppStdCout.md). Note that writing to
    [std::clog](CppStdClog.md) makes the output less messier:

     

      -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     ##12: : 10     #2: 10     #9     1: 9     #1: 8     #2#1: 8     #2: 7     #2: 6     #2: : 5     #2: 4     #27     #1: 6     #1: 5     #1: 4     #1: 3     #1: 2     #1: 1     : 3     #2: 2     #2: 1     `
      -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     

 

This example is checked for errors in [helgrind example 1: two counting
threads](CppHelgrindExample1.md), where [helgrind](CppHelgrind.md) is
shown to detect race conditions.

 

The next example, [std::thread example 2: two counting threads using
std::mutex](CppThreadExample2.md) demonstrates how to use
[std::mutexes](CppMutex.md) to share [std::cout](CppStdCout.md) nicely.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup's C++0x
    page](http://www2.research.att.com/~bs/C++0xFAQ.html)

 

 

 

 

 

 

