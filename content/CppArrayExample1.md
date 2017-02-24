[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ArrayExample1](CppArrayExample1.htm)
======================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

([C++](Cpp.htm)) [array/std::array/boost::array example 1: comparison](CppArrayExample1.htm)
============================================================================================

 

[array/std::array/boost::array example 1:
comparison](CppArrayExample1.htm) is a comparison between a plain
[array](CppArray.htm), [std::array](CppStdArray.htm),
[std::tr1::array](CppTr1Array.htm) and
[boost::array](CppBoostArray.htm).

 

-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppArrayExample1' (zip)](CppArrayExample1.zip)
-   ![Windows](PicWindows.png)[Download the Windows executable of
    'CppArrayExample1' (zip)](CppArrayExample1Exe.zip)

 

The conclusions draws are (note that every 'Yes' is 'a good thing'):

 

  -------------------------------------------------------------- ---------------------------------- ----------------------------------- ------------------------------------ ------------------------------- -----------------------------------
  Property tested                                                Statically allocated plain array   Dynamically allocated plain array   [std::tr1::array](CppTr1Array.htm)   [std::array](CppStdArray.htm)   [boost::array](CppBoostArray.htm)
  Initialization at creation                                     Yes                                No                                  Yes                                  Yes                             Yes
  Initialization at creation checked against too few elements    No                                 N/A                                 No                                   No                              No
  Initialization at creation checked against too many elements   Yes                                N/A                                 Yes                                  Yes                             Yes
  Size requestable at compile-time                               Yes                                No                                  No                                   Yes                             No
  Size requestable at run-time                                   Yes                                No                                  Yes                                  Yes                             Yes
  -------------------------------------------------------------- ---------------------------------- ----------------------------------- ------------------------------------ ------------------------------- -----------------------------------

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppArrayExample1/CppArrayExample1.pro
--------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppArrayExample1/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <array> #include <cassert> #include <boost/array.hpp> #include <tr1/array>  int main() {   //Statically allocated plain array   {     //const int w[3] = { 0,1 }; //Does compile: too few elements is not checked in assignment     //const int x[3] = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment      const int v[3] = { 0,1,2 };      static_assert(sizeof(v) / sizeof(int) == 3,"");     assert(v[1] == 1);   }   //Dynamically allocated plain array   {     int * const v { new int(3) }; //Cannot initialize directly     v[0] = 0; v[1] = 1; v[2] = 2;      static_assert(sizeof(v) / sizeof(int) == 1 || sizeof(v) / sizeof(int) == 2,       "WARNING: you might have expected this to be 3");     assert((sizeof(v) / sizeof(int) == 1 || sizeof(v) / sizeof(int) == 2)       && "WARNING: you might have expected this to be 3");      assert(v[1] == 1);      delete[] v; //Do not forget to free memory with right syntax   }   //std::tr1::array   {     //const std::tr1::array<int,3> w = { 0,1 }; //Does compile: too few elements is not checked in assignment     //const std::tr1::array<int,3> x = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment     const std::tr1::array<int,3> v { 0,1,2 }; //Note the double braces     //static_assert(v.size() == 3,""); //Not allowed     assert(v[1] == 1);   }   //std::array   {     //const std::array<int,3> w = { 0,1 }; //Does compile: too few elements is not checked in assignment     //const std::array<int,3> x = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment      const std::array<int,3> v { 0,1,2 }; //Note the double braces     static_assert(v.size() == 3,"");     assert(v[1] == 1);   }   //boost::array   {     //const boost::array<int,3> w = { 0,1 }; //Does compile: to few elements is not checked in assignment     //const boost::array<int,3> x = { 0,1,2,3 }; //Does not compile: too many elements is checked in assignment      const boost::array<int,3> v { 0,1,2 }; //Note the double braces      //static_assert(v.size() == 3,""); //Not allowed     assert(v.size() == 3);     assert(v[1] == 1);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
