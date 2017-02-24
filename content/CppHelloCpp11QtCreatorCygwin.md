
 

 

 

 

 

([C++](Cpp.md)) [HelloCpp11QtCreatorCygwin](CppHelloCpp11QtCreatorCygwin.md)
==============================================================================

 

![C++11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Cygwin](PicCygwin.png)

 

[Hello C++11 using Qt Creator under
Cygwin](CppHelloCpp11QtCreatorCygwin.md) is a [Hello
C++11](CppHelloCpp11.md) program.

 

-   [Download the Qt Creator project
    'CppHelloCpp11QtCreatorCygwin' (zip)](CppHelloCpp11QtCreatorCygwin.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloCpp11QtCreatorCygwin/CppHelloCpp11QtCreatorCygwin.pro
--------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++11 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp11QtCreatorCygwin/main.cpp
---------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const auto s = "Hello C++11";   std::cout << s << '\n'; }`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp11QtCreatorCygwin/CppHelloCpp11QtCreatorCygwin.sh
--------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash mymake="make.exe" myqmake="/usr/lib/qt4/bin/qmake.exe" mytarget="CppHelloCpp11QtCreatorCygwin" myprofile=$mytarget.pro myexe=$mytarget.exe   if [ -e $myqmake ] then   echo "Compiler '$myqmake' found" else   echo "Compiler '$myqmake' not found directly"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myqmake $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myqmake $myprofile"   exit fi  if [ -e $mymake ] then   echo "Compiler '$mymake' found" else   echo "Compiler '$mymake' not found directly"   #exit fi  echo "2/2: making makefile"  $mymake  echo $myexe  if [ -e $myexe ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm *.o rm $myexe rm Makefile`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

