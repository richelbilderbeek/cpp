



 

 

 

 

 

([C++](Cpp.md)) [StrToWStr](CppStrToWStr.md)
==============================================

 

[StrToWStr](CppStrToWStr.md) is a [convert](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) a
[std::string](CppString.md) to [Wt::WString](CppWString.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///StrToWStr converts a std::string to Wt::WString //From http://www.richelbilderbeek.nl/CppStrToWStr.htm const Wt::WString StrToWStr(const std::string& s) {   return Wt::WString(s); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 (maverick)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.4.5
-   ![Wt](PicWt.png) [Wt](CppWt.md): version 3.1.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppWString.pro
-------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-04-16T10:24:05 # #------------------------------------------------- QT       += core QT       -= gui LIBS += -lwt TARGET = CppWString CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <Wt/WString>  ///StrToWStr converts a std::string to Wt::WString //From http://www.richelbilderbeek.nl/CppStrToWStr.htm const Wt::WString StrToWStr(const std::string& s) {   return Wt::WString(s); }  ///WStrToStr converts a Wt::WString to std::string //From http://www.richelbilderbeek.nl/CppWStrToStr.htm const std::string WStrToStr(const Wt::WString& s) {   return std::string(s.toUTF8()); }  int main() {   const Wt::WString s = "Hello World";   const std::string t = WStrToStr(s);   const Wt::WString u = StrToWStr(t);   const std::string v = WStrToStr(u);    assert(s == u);   assert(t == v); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



