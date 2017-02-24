
 

 

 

 

 

([C++](Cpp.md)) [Boost signal example 3: emitting two arguments and reading a result](CppBoostSignalExample3.md)
==================================================================================================================

 

This [Boost signal](CppBoostSignal.md) example shows how to emit
[this](CppThis.md).

 

-   [Download the Qt Creator project
    'CppBoostSignalExample3' (zip)](CppBoostSignalExample3.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppBoostSignalExample3.pro
-------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror  `
  ------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/function.hpp>  struct MyClass {   MyClass(const int x = 0) : m_x(x) {}   int Plus( const int x) const { return m_x + x; }   int Minus(const int x) const { return m_x - x; }   int m_x; };  int main() {   typedef boost::function<int(const MyClass*,int)> Function;   MyClass c;   Function f1 = &MyClass::Plus;   Function f2 = &MyClass::Minus;   assert( f1(&c,1000) ==  1000 );   assert( f2(&c,1000) == -1000 ); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

