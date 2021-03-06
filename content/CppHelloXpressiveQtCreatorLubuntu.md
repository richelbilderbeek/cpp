
 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png)![Qt Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png) [Hello Boost.Xpressive using Qt Creator under Lubuntu](CppHelloXpressiveQtCreatorLubuntu.md)
==============================================================================================================================================================================================

 

[Hello Boost.Xpressive using Qt Creator under
Lubuntu](CppHelloXpressiveQtCreatorLubuntu.md) is a specialization of
[Hello Boost.Xpressive](CppHelloXpressive.md) for [Qt
Creator](CppQtCreator.md) under [Lubuntu](CppLubuntu.md).

 

-   [Download the Qt Creator project
    'CppHelloXpressiveQtCreatorLubuntu' (zip)](CppHelloXpressiveQtCreatorLubuntu.md)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppHelloXpressiveQtCreatorLubuntu.pro
------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/xpressive/xpressive.hpp>  ///Example adapted from http://www.boost.org/doc/libs/1_54_0/doc/html/xpressive/user_s_guide.html int main() {   const std::string hello( "hello world!" );    const boost::xpressive::sregex rex = boost::xpressive::sregex::compile( "(\\w+) (\\w+)!" );   boost::xpressive::smatch what;    if( boost::xpressive::regex_match( hello, what, rex ) )   {     std::cout << what[0] << '\n'; // whole match     std::cout << what[1] << '\n'; // first capture     std::cout << what[2] << '\n'; // second capture   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

