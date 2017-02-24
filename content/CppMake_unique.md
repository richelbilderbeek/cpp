



 

 

 

 

 

([C++](Cpp.md)) [Make\_unique](CppMake_unique.md)
===================================================

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMake\_unique/CppMake\_unique.pro
------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` unix:!macx{   # Linux only   message("Console application, built for Linux")   QMAKE_CXXFLAGS += -Werror   QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++ }  QT += core QT += gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app   include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMake\_unique/main.cpp
--------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <memory> #include <iostream>  int main() {   std::cout << __cplusplus << std::endl;   #if __cplusplus >= 201300   std::cout << "C++14" << '\n';   const std::unique_ptr<int> i{std::make_unique<int>()};   assert(i);   #else   #if __cplusplus >= 201103   std::cout << "C++11" << '\n';   //const std::unique_ptr<int> i{std::make_unique<int>()};   assert(i);   #endif   #endif }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
