



 

 

 

 

 

([C++](Cpp.htm)) [SimplifyPath](CppSimplifyPath.htm)
====================================================

 

[SimplifyPath](CppSimplifyPath.htm) is a [std::string](CppString.htm)
and [file I/O](CppFileIo.htm) [code snippet](CppCodeSnippets.htm) to
remove a filename's path.

 

-   [Download the Qt Creator projct
    'CppSimplifyPath' (zip)](CppSimplifyPath.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.04 (precise)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.3.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.6.3

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.46.1
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppSimplifyPath.pro
------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-05-30T10:52:19 # #-------------------------------------------------  QT       += core  QT       -= gui  TARGET = CppSimplifyPath CONFIG   += console CONFIG   -= app_bundle  LIBS += -lboost_regex  TEMPLATE = app   SOURCES += main.cpp `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/regex.hpp>  ///Simplify a path ///For example, /// /home/richel/Projects/Tools/ToolTestProFile/../../Classes/CppQtAboutDialog/qtaboutdialog.ui ///is converted to /// /home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui //From http://www.richelbilderbeek.nl/CppSimplifyPath.htm const std::string SimplifyPath(const std::string& s) {    std::string t = s;   while (1)   {     const std::string new_t = boost::regex_replace(t,boost::regex("/\\w*/../"),"/");     if (t == new_t) return t;     t = new_t;   } }  #include <cassert>  int main() {   assert(SimplifyPath("/home/richel/Projects/Tools/ToolTestProFile/../../Classes/CppQtAboutDialog/qtaboutdialog.ui")     == "/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui");   assert(SimplifyPath("/home/richel/Projects/Tools/../Classes/CppQtAboutDialog/qtaboutdialog.ui")     == "/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui");   assert(SimplifyPath("/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui")     == "/home/richel/Projects/Classes/CppQtAboutDialog/qtaboutdialog.ui"); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
