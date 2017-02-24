[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [HelloBoostXpressiveQtCreatorLubuntu](CppHelloBoostXpressiveQtCreatorLubuntu.htm)
==================================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Hello Boost.Xpressive using Qt Creator under
Lubuntu](CppHelloBoostXpressiveQtCreatorLubuntu.htm) is a [Hello
Boost.Xpressive](CppHelloBoostXpressive.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloBoostXpressiveQtCreatorLubuntu' (zip)](CppHelloBoostXpressiveQtCreatorLubuntu.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloBoostXpressiveQtCreatorLubuntu/CppHelloBoostXpressiveQtCreatorLubuntu.pro
----------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostXpressiveQtCreatorLubuntu/main.cpp
-------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/xpressive/xpressive.hpp> #pragma GCC diagnostic pop  ///Example adapted from http://www.boost.org/doc/libs/1_54_0/doc/html/xpressive/user_s_guide.html int main() {   const std::string hello( "hello world!" );    const boost::xpressive::sregex rex = boost::xpressive::sregex::compile( "(\\w+) (\\w+)!" );   boost::xpressive::smatch what;    if( boost::xpressive::regex_match( hello, what, rex ) )   {     std::cout << what[0] << '\n'; // whole match     std::cout << what[1] << '\n'; // first capture     std::cout << what[2] << '\n'; // second capture   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostXpressiveQtCreatorLubuntu/CppHelloBoostXpressiveQtCreatorLubuntu.sh
----------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="qmake" mytarget="CppHelloBoostXpressiveQtCreatorLubuntu" myprofile=$mytarget.pro  if [ ! -e $myprofile ] then   echo "Qt Creator project '$myprofile' not found"   exit fi  $myfile $myprofile  if [ ! -e Makefile ] then   echo "FAIL: $myfile $myprofile"   exit fi  make  if [ -e $mytarget ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL" fi  #Cleaning up rm *.o rm Makefile rm $mytarget`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
