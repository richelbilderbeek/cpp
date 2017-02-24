



 

 

 

 

 

([C++](Cpp.htm)) [RuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201](CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse_charset201.htm)
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

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201/CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201.pro
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror  INCLUDEPATH += \   ../../Libraries/boost_1_54_0  CONFIG(release, debug|release) {   DEFINES += NDEBUG }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppRuntimeErrorAssertionFailedXpressiveDetailDynamicParse\_charset201/main.cpp
--------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/xpressive/xpressive.hpp> #pragma GCC diagnostic pop  int main() {   try   {     boost::xpressive::sregex::compile("\\d{4} [");   }   catch (boost::xpressive::regex_error& e)   {     std::cout << "OK\n";     return 0;   }   return 1; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
