
 

 

 

 

 

([C++](Cpp.md)) [StdUniqueExample2](CppStdUniqueExample2.md)
==============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdUniqueExample2/CppStdUniqueExample2.pro
----------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdUniqueExample2/main.cpp
-------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  template <class Iterator> bool AreAllUnique(const Iterator& begin, const Iterator& end) {   std::sort(begin,end);   const Iterator new_end {     std::unique(begin,end)   };   return new_end == end; }  template <class Container> bool AreAllUnique(Container container) {   return AreAllUnique(std::begin(container),std::end(container)); }  int main() {   assert(AreAllUnique( std::vector<int>( {} )));   assert(AreAllUnique( std::vector<int>( { 1 } )));   assert(AreAllUnique( std::vector<int>( { 1,2 } )));   assert(AreAllUnique( std::vector<int>( { 2,1 } )));   assert(AreAllUnique( std::vector<int>( { 1,2,3 } )));   assert(AreAllUnique( std::vector<int>( { 2,3,1 } )));   assert(AreAllUnique( std::vector<int>( { 1,2,3,4 } )));   assert(AreAllUnique( std::vector<int>( { 4,3,2,1 } )));    assert(!AreAllUnique( std::vector<int>( { 1,2,1 } )));   assert(!AreAllUnique( std::vector<int>( { 2,2,1 } )));   assert(!AreAllUnique( std::vector<int>( { 1,2,3,2 } )));   assert(!AreAllUnique( std::vector<int>( { 2,3,1,1 } )));   assert(!AreAllUnique( std::vector<int>( { 1,2,3,4,3 } )));   assert(!AreAllUnique( std::vector<int>( { 4,3,2,1,3 } ))); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

