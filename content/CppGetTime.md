
 

 

 

 

 

([C++](Cpp.md)) [GetTime](CppGetTime.md)
==========================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[GetTime](CppGetTime.md) is a [time](CppTime.md) [code
snippet](CppCodeSnippets.md) to obtain now's time.

 

[GetTime](CppGetTime.md) can depend on two different
[libraries](CppLibrary.md):

-   ![Boost](PicBoost.png) [Boost](CppBoost.md) version of
    [GetTime](CppGetTime.md)
-   ![STL](PicStl.png) [STL](CppStl.md) version of
    [GetTime](CppGetTime.md)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppGetTime/CppGetTime.pro
--------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGetTime/main.cpp
---------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime> #include <iostream> #include <sstream> #include <string>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/date_time/posix_time/posix_time.hpp> #pragma GCC diagnostic pop  ///TimeToStr converts std::time_t to std::string. ///From http://www.richelbilderbeek.nl/CppTimeToStr.htm std::string TimeToStr(const std::time_t& time) noexcept {   std::string s { std::ctime(&time) };   assert(s.back() == '\n');   s.pop_back(); //Remove newline   return s; }  //From http://www.richelbilderbeek.nl/CppGetTime.htm std::time_t GetTimeT() noexcept {   return std::time(0); }  //From http://www.richelbilderbeek.nl/CppGetTime.htm std::string GetTimeStl() noexcept {   return TimeToStr(GetTimeT()); }  //From http://www.richelbilderbeek.nl/CppGetTime.htm std::string GetTimeBoost() noexcept {   //Get the local time   boost::posix_time::ptime now     = boost::posix_time::second_clock::local_time();   //Convert the time to std::stringstream   std::stringstream s;   s << now.time_of_day();   //Return the std::string   return s.str(); }   int main() {   std::cout << "Time now (STL): " << GetTimeStl() << '\n';   std::cout << "Time now (Boost): " << GetTimeBoost() << '\n'; }  /* Screen output:  Time now (STL): Fri Jan 17 09:54:38 2014 Time now (Boost): 09:54:38 Press <RETURN> to close this window...  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
