



 

 

 

 

 

([C++](Cpp.htm)) [How to suppress -Weffc++ errors?](CppSuppressEffCppErrors.htm)
================================================================================

 

[How to suppress -Weffc++ errors?](CppSuppressEffCppErrors.htm) is a
[FAQ](CpFaq.htm) to suppress the -Weffc++ flag, for example, when using
[Qt](CppQt.htm).

 

-   [Download the Qt Creator project
    'CppSuppressEffCppErrors' (zip)](CppSuppressEffCppErrors.htm)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppSuppressEffCppErrors.pro
--------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Werror -Wextra -Weffc++ SOURCES += main.cpp  `
  ------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  #pragma GCC diagnostic ignored "-Weffc++"  ///Suppress: ///error: 'MyClass::m_v' should be initialized in the member initialization list [-Werror=effc++] struct MyClass {   MyClass() {}   std::vector<int> m_v; };  #pragma GCC diagnostic pop  ///Unsupress ///error: 'MyClass2::m_v' should be initialized in the member initialization list [-Werror=effc++] struct MyClass2 {   MyClass2() {} //Will not compile   std::vector<int> m_v; };  int main() {   MyClass v; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
