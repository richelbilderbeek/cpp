
 

 

 

 

 

([C++](Cpp.md)) [ArrayExample1](CppArrayExample1.md)
======================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

([C++](Cpp.md)) [array/std::array/boost::array example 1: comparison](CppArrayExample1.md)
============================================================================================

 

[array/std::array/boost::array example 1:
comparison](CppArrayExample1.md) is a comparison between a plain
[array](CppArray.md), [std::array](CppStdArray.md),
[std::tr1::array](CppTr1Array.md) and
[boost::array](CppBoostArray.md).

 

-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppArrayExample1' (zip)](CppArrayExample1.zip)
-   ![Windows](PicWindows.png)[Download the Windows executable of
    'CppArrayExample1' (zip)](CppArrayExample1Exe.zip)

 

The conclusions draws are (note that every 'Yes' is 'a good thing'):

 

  -------------------------------------------------------------- ---------------------------------- ----------------------------------- ------------------------------------ ------------------------------- -----------------------------------
  Property tested                                                Statically allocated plain array   Dynamically allocated plain array   [std::tr1::array](CppTr1Array.md)   [std::array](CppStdArray.md)   [boost::array](CppBoostArray.md)
  Initialization at creation                                     Yes                                No                                  Yes                                  Yes                             Yes
  Initialization at creation checked against too few elements    No                                 N/A                                 No                                   No                              No
  Initialization at creation checked against too many elements   Yes                                N/A                                 Yes                                  Yes                             Yes
  Size requestable at compile-time                               Yes                                No                                  No                                   Yes                             No
  Size requestable at run-time                                   Yes                                No                                  Yes                                  Yes                             Yes
  -------------------------------------------------------------- ---------------------------------- ----------------------------------- ------------------------------------ ------------------------------- -----------------------------------

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppArrayExample1/CppArrayExample1.pro
--------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppArrayExample1/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <array> #include <cassert> #include <boost/array.hpp> #include <tr1/array>  int main() {   //Statically allocated plain array   {     //const int w[3] = { 0,1 }; //Does compile: too few elements is not checked in assignment     //const int x[3] = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment      const int v[3] = { 0,1,2 };      static_assert(sizeof(v) / sizeof(int) == 3,"");     assert(v[1] == 1);   }   //Dynamically allocated plain array   {     int * const v { new int(3) }; //Cannot initialize directly     v[0] = 0; v[1] = 1; v[2] = 2;      static_assert(sizeof(v) / sizeof(int) == 1 || sizeof(v) / sizeof(int) == 2,       "WARNING: you might have expected this to be 3");     assert((sizeof(v) / sizeof(int) == 1 || sizeof(v) / sizeof(int) == 2)       && "WARNING: you might have expected this to be 3");      assert(v[1] == 1);      delete[] v; //Do not forget to free memory with right syntax   }   //std::tr1::array   {     //const std::tr1::array<int,3> w = { 0,1 }; //Does compile: too few elements is not checked in assignment     //const std::tr1::array<int,3> x = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment     const std::tr1::array<int,3> v { 0,1,2 }; //Note the double braces     //static_assert(v.size() == 3,""); //Not allowed     assert(v[1] == 1);   }   //std::array   {     //const std::array<int,3> w = { 0,1 }; //Does compile: too few elements is not checked in assignment     //const std::array<int,3> x = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment      const std::array<int,3> v { 0,1,2 }; //Note the double braces     static_assert(v.size() == 3,"");     assert(v[1] == 1);   }   //boost::array   {     //const boost::array<int,3> w = { 0,1 }; //Does compile: to few elements is not checked in assignment     //const boost::array<int,3> x = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment      const boost::array<int,3> v { 0,1,2 }; //Note the double braces      //static_assert(v.size() == 3,""); //Not allowed     assert(v.size() == 3);     assert(v[1] == 1);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
