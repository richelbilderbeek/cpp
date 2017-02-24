
 

 

 

 

 

([C++](Cpp.md)) [RuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201](CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse_charset201.md)
===============================================================================================================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

-   [View this error
    message (png)](CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse_charset201.png)
-   [Download the Qt Creator projectr
    'RuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201' (zip)](CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse_charset201.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Assertion failed!  Program: myfolder/myexe.exe File: myfolder/boost_1_54_0/boost/xpressive/detail/dynamic/parse_charset.hpp, Line 201  Expression: begin != end`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201/CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201.pro
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror  INCLUDEPATH += \   ../../Libraries/boost_1_54_0  CONFIG(release, debug|release) {   DEFINES += NDEBUG }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201/main.cpp
--------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/xpressive/xpressive.hpp> #pragma GCC diagnostic pop  int main() {   try   {     boost::xpressive::sregex::compile("\\d{4} [");   }   catch (boost::xpressive::regex_error& e)   {     std::cout << "OK\n";     return 0;   }   return 1; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
