
 

 

 

 

 

([C++](Cpp.md)) [SimplifyPath](CppSimplifyPath.md)
====================================================

 

[SimplifyPath](CppSimplifyPath.md) is a [std::string](CppString.md)
and [file I/O](CppFileIo.md) [code snippet](CppCodeSnippets.md) to
remove a filename's path.

 

-   [Download the Qt Creator projct
    'CppSimplifyPath' (zip)](CppSimplifyPath.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.04 (precise)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.3.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.6.3

[Libraries](CppLibrary.md) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.46.1
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppSimplifyPath.pro
------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-05-30T10:52:19 # #-------------------------------------------------  QT       += core  QT       -= gui  TARGET = CppSimplifyPath CONFIG   += console CONFIG   -= app_bundle  LIBS += -lboost_regex  TEMPLATE = app   SOURCES += main.cpp `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/regex.hpp>  ///Simplify a path ///For example, /// /home/richel/Projects/Tools/ToolTestProFile/../../Classes/CppQtAboutDialog/qtaboutdialog.ui ///is converted to /// /home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui //From http://www.richelbilderbeek.nl/CppSimplifyPath.htm const std::string SimplifyPath(const std::string& s) {    std::string t = s;   while (1)   {     const std::string new_t = boost::regex_replace(t,boost::regex("/\\w*/../"),"/");     if (t == new_t) return t;     t = new_t;   } }  #include <cassert>  int main() {   assert(SimplifyPath("/home/richel/Projects/Tools/ToolTestProFile/../../Classes/CppQtAboutDialog/qtaboutdialog.ui")     == "/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui");   assert(SimplifyPath("/home/richel/Projects/Tools/../Classes/CppQtAboutDialog/qtaboutdialog.ui")     == "/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui");   assert(SimplifyPath("/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui")     == "/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui"); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
