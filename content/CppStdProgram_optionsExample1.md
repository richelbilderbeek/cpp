



 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png) [Boost.Program\_options example 1: basics](CppProgram_optionsExample1.md)
==================================================================================================================

 

[Boost.Program\_options example 1:
basics](CppProgram_optionsExample1.md) is a
[Boost.Program\_options](CppProgram_options.md) example.

 

The example shows a (demonstration) program that responds to either
'--help' or '--filename \[my\_filename\]'.

 

-   [Download the Qt Creator project
    'CppProgram\_optionsExample1' (zip)](CppProgram_optionsExample1.zip)
-   ![Windows](PicWindows.png) [Download the
    'CppProgram\_optionsExample1' Windows
    executable (zip)](CppProgram_optionsExample1Exe.zip)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)
-   ![Windows](PicWindows.png) [Windows](CppWindows.md)

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

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.49
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppProgram\_optionsExample1.pro
------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app  unix {   LIBS += -lboost_regex }  win32 {   #Boost.Program_options   INCLUDEPATH += \   ../../Libraries/boost_1_53_0    SOURCES += main.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/winmain.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/variables_map.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/value_semantic.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/utf8_codecvt_facet.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/split.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/positional_options.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/parsers.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/options_description.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/convert.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/config_file.cpp \     ../../Libraries/boost_1_53_0/libs/program_options/src/cmdline.cpp  }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/program_options.hpp>  int main(int argc, char* argv[]) {   // Declare the supported options.   boost::program_options::options_description d("Allowed options for [my_program]");   d.add_options()       ("help",         "produce this help message")       ("filename",          boost::program_options::value<std::string>(),          "load from file 'arg'");    boost::program_options::variables_map m;   boost::program_options::store(     boost::program_options::parse_command_line(       argc, argv, d), m);   boost::program_options::notify(m);    //If one of the options is set to 'help'...   if (m.count("help"))   {     //Display the options_description     std::cout << d << "\n";   }    if (m.count("filename"))   {     std::cout       << "Filename is set to '"       << m["filename"].as<std::string>()       << "'\n";   }   else   {     std::cout       << "No filename set\n";   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

crosscompiletowindows.sh
------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh #From http://richelbilderbeek.nl/CppQtCrosscompileToWindowsExample15.htm  echo "Cross compiling to Windows"  echo "1/2: Creating Windows makefile" i686-pc-mingw32-qmake CppProgram_optionsExample1.pro  echo "2/2: making makefile"  make  echo "Done"`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
