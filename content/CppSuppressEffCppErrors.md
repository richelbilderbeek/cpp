
 

 

 

 

 

([C++](Cpp.md)) [How to suppress -Weffc++ errors?](CppSuppressEffCppErrors.md)
================================================================================

 

[How to suppress -Weffc++ errors?](CppSuppressEffCppErrors.md) is a
[FAQ](CpFaq.md) to suppress the -Weffc++ flag, for example, when using
[Qt](CppQt.md).

 

-   [Download the Qt Creator project
    'CppSuppressEffCppErrors' (zip)](CppSuppressEffCppErrors.md)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppSuppressEffCppErrors.pro
--------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Werror -Wextra -Weffc++ SOURCES += main.cpp  `
  ------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  #pragma GCC diagnostic ignored "-Weffc++"  ///Suppress: ///error: 'MyClass::m_v' should be initialized in the member initialization list [-Werror=effc++] struct MyClass {   MyClass() {}   std::vector<int> m_v; };  #pragma GCC diagnostic pop  ///Unsupress ///error: 'MyClass2::m_v' should be initialized in the member initialization list [-Werror=effc++] struct MyClass2 {   MyClass2() {} //Will not compile   std::vector<int> m_v; };  int main() {   MyClass v; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
