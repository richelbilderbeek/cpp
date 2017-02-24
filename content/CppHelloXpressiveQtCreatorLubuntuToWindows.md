



 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png)![Qt Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png) [Hello Boost.Xpressive using Qt Creator under Lubuntu, crosscompile to Windows](CppHelloXpressiveQtCreatorLubuntuToWindows.htm)
==========================================================================================================================================================================================================================================================================

 

[Hello Boost.Xpressive using Qt Creator under Lubuntu, crosscompile to
Windows](CppHelloXpressiveQtCreatorLubuntuToWindows.htm) is a
specialization of [Hello Boost.Xpressive](CppHelloXpressive.htm) for [Qt
Creator](CppQtCreator.htm) under [Lubuntu](CppLubuntu.htm), crosscompile
to Windows.

 

-   [Download the Qt Creator project
    'CppHelloXpressiveQtCreatorLubuntuToWindows' (zip)](CppHelloXpressiveQtCreatorLubuntuToWindows.htm)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppHelloXpressiveQtCreatorLubuntuToWindows.pro
---------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/xpressive/xpressive.hpp>  ///Example adapted from http://www.boost.org/doc/libs/1_54_0/doc/html/xpressive/user_s_guide.html int main() {   const std::string hello( "hello world!" );    const boost::xpressive::sregex rex = boost::xpressive::sregex::compile( "(\\w+) (\\w+)!" );   boost::xpressive::smatch what;    if( boost::xpressive::regex_match( hello, what, rex ) )   {     std::cout << what[0] << '\n'; // whole match     std::cout << what[1] << '\n'; // first capture     std::cout << what[2] << '\n'; // second capture   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppHelloXpressiveQtCreatorLubuntuToWindows.sh
---------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash #From http://richelbilderbeek.nl/CppHelloXpressiveQtCreatorLubuntuToWindows.htm echo "Cross compiling to Windows"  myfile="i686-pc-mingw32-qmake" mytarget="CppHelloXpressiveQtCreatorLubuntuToWindows" myprofile=$mytarget.pro myexefile=release/$mytarget.exe   if [ -e $myfile ] then   echo "MXE crosscompiler '$myfile' found" else   echo "MXE crosscompiler '$myfile' not found directly, but perhaps it is in the PATH"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: qmake $myprofile"   exit fi  echo "2/2: making makefile"  make  if [ -e $myexefile ] then   echo "SUCCES" else   echo $myexefile   echo "FAIL" fi  #Cleaning up rm -r release rm -r debug rm Makefile rm Makefile.* #rm $target`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
