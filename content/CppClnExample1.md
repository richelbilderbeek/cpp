
 

 

 

 

 

([C++](Cpp.md)) [ClnExample1](CppClnExample1.md)
==================================================

 

![CLN](PicCln.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[CLN example 1](CppClnExample1.md) is a [CLN](CppCln.md) example that
compares the regular and [CLN](CppCln.md) [int](CppInt.md) in
calculating a huge factorial.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppClnExample1/CppClnExample1.pro
----------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #Apfloat will generate errors with -Weffc++ include(../../ConsoleApplicationNoWeffcpp.pri)  include(../../Libraries/Cln.pri) #include(../../Libraries/Boost.pri) include(../../Libraries/FParser.pri)  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppClnExample1/main.cpp
-------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <cln/cln.h>  //From http://www.richelbilderbeek.nl/CppClnExample1.htm int main() {   //Regular int   int x = 1;    //CLN int   ::cln::cl_I y = 1;    for (int i=1; i!=50; ++i)   {     x*=i;     y*=i;     std::cout << i << "! : " << x << '\t' << y << '\n';   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

