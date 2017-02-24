

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdLocaleExample1](CppStdLocaleExample1.htm)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdLocaleExample1/CppStdLocaleExample1.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdLocaleExample1/main.cpp
-------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <locale> #include <boost/lexical_cast.hpp>  int main() {   const double my_double{1.5};   const int my_int{1234};   const std::string prev_locale_name = std::locale().name();   const bool prev_is_dot = std::to_string(my_double)[1] == '.';    std::locale::global(std::locale("nl_NL.UTF-8"));    assert(std::locale().name() == "nl_NL.UTF-8");   assert(boost::lexical_cast<std::string>(my_double)[1] == ',' && "Dutch");   assert(std::to_string(my_double)[1] == ',' && "Dutch");   assert(std::to_string(my_int) == "1234" && "Dutch");    std::locale::global(std::locale("en_US.UTF-8"));    assert(std::locale().name() == "en_US.UTF-8");   assert(boost::lexical_cast<std::string>(my_double)[1] == '.' && "English");   assert(std::to_string(my_double)[1] == '.' && "English");   assert(std::to_string(my_int) == "1234");    //Restore   std::locale::global(std::locale(prev_locale_name.c_str()));   assert(std::locale().name() == prev_locale_name);   assert((boost::lexical_cast<std::string>(my_double)[1] == '.') == prev_is_dot);   assert((std::to_string(my_double)[1] == '.') == prev_is_dot);   assert(std::to_string(my_int) == "1234"); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
