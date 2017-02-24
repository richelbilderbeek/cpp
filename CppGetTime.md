[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetTime](CppGetTime.htm)
==========================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[GetTime](CppGetTime.htm) is a [time](CppTime.htm) [code
snippet](CppCodeSnippets.htm) to obtain now's time.

 

[GetTime](CppGetTime.htm) can depend on two different
[libraries](CppLibrary.htm):

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm) version of
    [GetTime](CppGetTime.htm)
-   ![STL](PicStl.png) [STL](CppStl.htm) version of
    [GetTime](CppGetTime.htm)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppGetTime/CppGetTime.pro
--------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGetTime/main.cpp
---------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime> #include <iostream> #include <sstream> #include <string>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/date_time/posix_time/posix_time.hpp> #pragma GCC diagnostic pop  ///TimeToStr converts std::time_t to std::string. ///From http://www.richelbilderbeek.nl/CppTimeToStr.htm std::string TimeToStr(const std::time_t& time) noexcept {   std::string s { std::ctime(&time) };   assert(s.back() == '\n');   s.pop_back(); //Remove newline   return s; }  //From http://www.richelbilderbeek.nl/CppGetTime.htm std::time_t GetTimeT() noexcept {   return std::time(0); }  //From http://www.richelbilderbeek.nl/CppGetTime.htm std::string GetTimeStl() noexcept {   return TimeToStr(GetTimeT()); }  //From http://www.richelbilderbeek.nl/CppGetTime.htm std::string GetTimeBoost() noexcept {   //Get the local time   boost::posix_time::ptime now     = boost::posix_time::second_clock::local_time();   //Convert the time to std::stringstream   std::stringstream s;   s << now.time_of_day();   //Return the std::string   return s.str(); }   int main() {   std::cout << "Time now (STL): " << GetTimeStl() << '\n';   std::cout << "Time now (Boost): " << GetTimeBoost() << '\n'; }  /* Screen output:  Time now (STL): Fri Jan 17 09:54:38 2014 Time now (Boost): 09:54:38 Press <RETURN> to close this window...  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
