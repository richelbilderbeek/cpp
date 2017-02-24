



 

 

 

 

 

([C++](Cpp.md)) ![C++11](PicCpp11.png) [std::thread example 3: program flow](CppThreadExample3.md)
====================================================================================================

 

This [thread](CppThread.md) example investigates the program flow from
two simultaneously running [threads](CppThread.md).

 

The code I implemented after the talk given by Hans Boehm \[1\].

 

-   [Download the Qt Creator project
    'CppThreadExample3' (zip)](CppThreadExample3.zip)
-   [Download the raw script results
    'CppThreadExample3.csv' (csv)](CppThreadExample3.csv)
-   [Download the investigated results
    'CppThreadExample3.xls' (xls)](CppThreadExample3.xls)
-   [Download the investigated results
    'CppThreadExample3.gnumeric' (gnumeric)](CppThreadExample3.xls)
-   [View the tally of the output of
    'CppThreadExample3.txt' (txt)](CppThreadExample3.txt)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 11.04 (natty)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.5.2
-   Borland [BCC32.EXE](CppBcc32Exe.md) version 6.0.10.157

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.5.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppThreadExample3.pro
--------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-07-29T16:22:11 # #------------------------------------------------- QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++0x TARGET = CppThreadExample3 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <thread>  struct Tasks {   //static mutex, because each thread its must use the same mutex   static std::mutex mutex;   static int x;   static int y;    static void Task1()   {     x = 1;     int r = y;      ///Acquire access to std::cout     std::lock_guard<std::mutex> lock(mutex);      ///Write to std::cout     std::cout << "thread #1, x: " << x << ", copy of y: " << r << ", ";   }   static void Task2()   {     y = 1;     int r = x;      ///Acquire access to std::cout     std::lock_guard<std::mutex> lock(mutex);      ///Write to std::cout     std::cout << "thread #2, y: " << y << ", copy of x: " << r << ", ";   } };  std::mutex Tasks::mutex; int Tasks::x = 0; int Tasks::y = 0;  int main() {   std::thread t1(Tasks::Task1);   std::thread t2(Tasks::Task2);   t1.join();   t2.join();   std::cout << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppThreadExample3.sh
--------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash for ((i = 0;i<=1000;i++)) do ../CppThreadExample3-build-desktop/./CppThreadExample3 >> output.csv done`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Screen ouput
------------

 

Screen output varies, so I used the script 'CppThreadExample3.sh' to let
the program run a thousand times, so I could tally the output.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` 197x thread #1, x: 1, copy of y: 0, thread #2, y: 1, copy of x: 0,   73x thread #1, x: 1, copy of y: 0, thread #2, y: 1, copy of x: 1,  242x thread #1, x: 1, copy of y: 1, thread #2, y: 1, copy of x: 0,    0x thread #1, x: 1, copy of y: 1, thread #2, y: 1, copy of x: 1,  270x thread #2, y: 1, copy of x: 0, thread #1, x: 1, copy of y: 0,  217x thread #2, y: 1, copy of x: 0, thread #1, x: 1, copy of y: 1,    2x thread #2, y: 1, copy of x: 1, thread #1, x: 1, copy of y: 0,    0x thread #2, y: 1, copy of x: 1, thread #1, x: 1, copy of y: 1, `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppThreadExample3' (zip)](CppThreadExample3.zip)
-   [Download the raw script results
    'CppThreadExample3.csv' (csv)](CppThreadExample3.csv)
-   [Download the investigated results
    'CppThreadExample3.xls' (xls)](CppThreadExample3.xls)
-   [Download the investigated results
    'CppThreadExample3.gnumeric' (gnumeric)](CppThreadExample3.xls)
-   [View the tally of the output of
    'CppThreadExample3.txt' (txt)](CppThreadExample3.txt)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Google TechTalk 'Getting C++ Threads Right' by Hans
    Boehm](http://www.youtube.com/watch?v=mrvAqvtWYb4)

 

 

 

 

 





 



