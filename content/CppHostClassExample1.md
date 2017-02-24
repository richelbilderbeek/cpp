[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [HostClassExample1](CppHostClassExample1.htm)
==============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHostClassExample1/CppHostClassExample1.pro
----------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHostClassExample1/main.cpp
-------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct HappySayHello {   void SayHello() const { std::cout << "Hello!\n"; }  protected:   ~HappySayHello()   {     // The destructor of a policy class should be protected and non-virtual:     // * Herb Sutter, Andrei Alexandrescu. C++ coding standards: 101 rules,     //   guidelines, and best practices. ISBN: 0-32-111358-6. Item 50: 'Make     //   base class destructors public and virtual, or protected and nonvirtual'     // * Andrei Alexandrescu. Modern C++ Design. 2001. ISBN: 0201704315.     //   Page 13. Section 1.7: 'The lightweight, effective solution that     //   policies should use is to define a nonvirtual protected destructor'   } };  struct GrumpySayHello {   void SayHello() const { std::cout << "Moi\n"; }  protected:   ~GrumpySayHello()   {     // The destructor of a policy class should be protected and non-virtual:     // * Herb Sutter, Andrei Alexandrescu. C++ coding standards: 101 rules,     //   guidelines, and best practices. ISBN: 0-32-111358-6. Item 50: 'Make     //   base class destructors public and virtual, or protected and nonvirtual'     // * Andrei Alexandrescu. Modern C++ Design. 2001. ISBN: 0201704315.     //   Page 13. Section 1.7: 'The lightweight, effective solution that     //   policies should use is to define a nonvirtual protected destructor'   }  };  template <class SayHelloPolicy> class HostClass : public SayHelloPolicy {   //Obtains its member functions from its SayHelloPolicy };   int main() {   HostClass<HappySayHello> happy;   happy.SayHello();    HostClass<GrumpySayHello> grumpy;   grumpy.SayHello(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
