



 

 

 

 

 

([C++](Cpp.htm)) [Wt::WString](CppWString.htm)
==============================================

 

[Wt::WString](CppWString.htm) is a [Wt](CppWt.htm)
[string](CppString.htm) [class](CppClass.htm).

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.10 (maverick)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.4.5
-   ![Wt](PicWt.png) [Wt](CppWt.htm): version 3.1.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppWString.pro
-------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-04-16T10:24:05 # #------------------------------------------------- QT       += core QT       -= gui LIBS += -lwt TARGET = CppWString CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <Wt/WString>  ///StrToWStr converts a std::string to Wt::WString //From http://www.richelbilderbeek.nl/CppStrToWStr.htm const Wt::WString StrToWStr(const std::string& s) {   return Wt::WString(s); }  ///WStrToStr converts a Wt::WString to std::string //From http://www.richelbilderbeek.nl/CppWStrToStr.htm const std::string WStrToStr(const Wt::WString& s) {   return std::string(s.toUTF8()); }  int main() {   const Wt::WString s = "Hello World";   const std::string t = WStrToStr(s);   const Wt::WString u = StrToWStr(t);   const std::string v = WStrToStr(u);    assert(s == u);   assert(t == v); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



