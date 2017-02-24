
 

 

 

 

 

([C++](Cpp.md)) [ApfloatToStr](CppApfloatToStr.md)
====================================================

 

![STL](PicStl.png)

 

[ApfloatToStr](CppApfloatToStr.md) is an [apfloat](CppApfloat.md)
[example](CppExample.md).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppApfloatToStr/CppApfloatToStr.pro
------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplicationNoWeffcpp.pri) include(../../Libraries/Boost.pri) include(../../Libraries/Apfloat.pri)  SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppApfloatToStr/main.cpp
--------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-variable" #include <string> #include <boost/lexical_cast.hpp> #include "apfloat.h" #pragma GCC diagnostic pop  //Uses C++98 std::string ToStr(const apfloat& a) {   std::stringstream s;   s << a;   return s.str(); }  //Uses apfloat and C++98 std::string ToStrApfloat(const apfloat& a) {   std::stringstream s;   s << pretty << a;   return s.str(); }  int main() {   const double x{12.34};   const apfloat y(x);   const std::string a{ToStr(y)};   const std::string b{ToStrApfloat(y)};   std::cout      << a << '\n'      << b << '\n'    ; }  /* Screen output:  0.000000012339999999999999880e9 12.339999999999999880  */`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

