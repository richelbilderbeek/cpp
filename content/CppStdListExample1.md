
 

 

 

 

 

([C++](Cpp.md)) [ListExample1](CppListExample1.md)
====================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.10 (saucy)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md)
    unknown

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.8.1

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.8.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppListExample1/CppListExample1.pro
------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppListExample1/main.cpp
--------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iterator> #include <list>  int main() {   std::list<int> my_list;   //Add a two at the end   my_list.push_back(2);   //Add a zero at the beginning   my_list.push_front(0);   //Obtain an iterator to a position in between   std::list<int>::iterator my_iterator = my_list.begin();   ++my_iterator;   //Insert a one in between   my_list.insert(my_iterator,1);   //Display the list   std::copy(my_list.begin(),my_list.end(),     std::ostream_iterator<int>(std::cout,"\n")); }  /* Screen output:  0 1 2 Press <RETURN> to close this window...  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

