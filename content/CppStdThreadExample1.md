

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![C++11](PicCpp11.png) [std::thread example 1: two counting threads](CppThreadExample1.htm)
============================================================================================================

 

This [std::thread](CppThread.htm) examples shows the code and screen
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

-   Calling [std::thread](CppThread.htm)::join denotes 'wait for the
    [std::thread](CppThread.htm) to terminate' \[1\]
-   It is important that we wait for the [std::thread](CppThread.htm) to
    terminate, because 'when a [std::thread](CppThread.htm) goes out of
    [scope](CppScope.htm) the program is
    [std::terminate](CppTerminate.htm)()d unless its task has completed'
    \[1\]
-   Both [std::threads](CppThread.htm) do not wait for the other to
    finish writing to [std::cout](CppCout.htm). Note that writing to
    [std::clog](CppClog.htm) makes the output less messier:

     

      -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     ##12: : 10     #2: 10     #9     1: 9     #1: 8     #2#1: 8     #2: 7     #2: 6     #2: : 5     #2: 4     #27     #1: 6     #1: 5     #1: 4     #1: 3     #1: 2     #1: 1     : 3     #2: 2     #2: 1     `
      -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     

 

This example is checked for errors in [helgrind example 1: two counting
threads](CppHelgrindExample1.htm), where [helgrind](CppHelgrind.htm) is
shown to detect race conditions.

 

The next example, [std::thread example 2: two counting threads using
std::mutex](CppThreadExample2.htm) demonstrates how to use
[std::mutexes](CppMutex.htm) to share [std::cout](CppCout.htm) nicely.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup's C++0x
    page](http://www2.research.att.com/~bs/C++0xFAQ.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
