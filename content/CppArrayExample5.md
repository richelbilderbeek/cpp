[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ArrayExample5](CppArrayExample5.htm)
======================================================

 

![STL](PicStl.png)

 

[Array example 5](CppArrayExample5.htm) is an [array](CppArray.htm)
[example](CppExample.htm).

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppArrayExample5/CppArrayExample5.pro
--------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra QT += core QT += gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app  include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppArrayExample5/main.cpp
---------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <array> #include <cstdlib> #include <vector>  #include <iostream> #include <string>  #include <boost/date_time/posix_time/ptime.hpp> #include <boost/date_time/microsec_time_clock.hpp>  const int n_repeats = 100000; const int sz = 10000;  class TestTimer { public:     TestTimer(const std::string & name) : name(name),         start(boost::date_time::microsec_clock<boost::posix_time::ptime>::local_time())     {     }      ~TestTimer()     {         using namespace std;         using namespace boost;          posix_time::ptime now(date_time::microsec_clock<posix_time::ptime>::local_time());         posix_time::time_duration d = now - start;          cout << name << " completed in " << d.total_milliseconds() / 1000.0 <<             " seconds" << endl;     }  private:     std::string name;     boost::posix_time::ptime start; };  struct Pixel {     Pixel(unsigned char r = 0, unsigned char g = 0, unsigned char b = 0) : r(r), g(g), b(b)     {     }      unsigned char r, g, b; };  void UseVector() {   TestTimer t("UseVector");    for(int i = 0; i < n_repeats; ++i)   {     std::vector<Pixel> pixels(sz, Pixel(255,0,0));   } }  void UseStdArray() {   TestTimer t("UseStdArry");    for(int i = 0; i!=n_repeats; ++i)   {     std::array<Pixel,sz> pixels;     pixels.fill(Pixel(255,0,0));   } }  void UseArray() {   TestTimer t("UseArray");    for(int i = 0; i < n_repeats; ++i)   {     Pixel * pixels = (Pixel *)malloc(sizeof(Pixel) * sz);      for(int i = 0 ; i < sz; ++i)     {         pixels[i].r = 255;         pixels[i].g =   0;         pixels[i].b =   0;     }      free(pixels);   } }  int main() {   TestTimer t1("The whole thing");    UseArray();   UseStdArray();   UseVector(); }   /* When #define USE_IMPROVED in debug mode   */  /* When #define USE_IMPROVED in release mode    */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
