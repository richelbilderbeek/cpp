
 

 

 

 

 

([C++](Cpp.md)) [HelloCpp0xQtCreatorSliTaz](CppHelloCpp0xQtCreatorSliTaz.md)
==============================================================================

 

![C++0x](PicCpp0x.png)![Qt
Creator](PicQtCreator.png)![SliTaz](PicSliTaz.png)

 

['HelloC++0x' using Qt Creator under
SliTaz](CppHelloCpp0xQtCreatorSliTaz.md) is a
[HelloC++0x](CppHelloCpp0x.md) program.

 

-   [Download the Qt Creator project
    'CppHelloCpp0xQtCreatorSliTaz' (zip)](CppHelloCpp0xQtCreatorSliTaz.zip)

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

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloCpp0xQtCreatorSliTaz/CppHelloCpp0xQtCreatorSliTaz.pro
--------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++0x CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp0xQtCreatorSliTaz/main.cpp
---------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const auto s = "Hello C++11";   std::cout << s << '\n'; }`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp0xQtCreatorSliTaz/CppHelloCpp0xQtCreatorSliTaz.sh
--------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="qmake" mytarget="CppHelloCpp0xQtCreatorSliTaz" myprofile=$mytarget.pro   if [ -e $myfile ] then   echo "Compiler '$myfile' found" else   echo "Compiler '$myfile' not found directly"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myfile $myprofile"   exit fi  echo "2/2: making makefile"  make  if [ -e $mytarget ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm *.o rm Makefile rm $mytarget`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
