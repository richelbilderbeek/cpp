

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'boost::thread::thread()'](CppLinkErrorUndefinedReferenceToBoostThread.htm)
====================================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:5: error: undefined reference to 'boost::thread::thread()' /MyFolder/main.cpp:5: error: undefined reference to 'boost::thread::~thread()' :: error: collect2: ld returned 1 exit status`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.2.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.40

 

The following source code was used:

 

  -------------------------------------------------------------------
  ` #include <boost/thread.hpp>  int main() {   boost::thread t; }`
  -------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-21T19:37:18 # #------------------------------------------------- QT       += core QT       -= gui TARGET = MyTarget CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the boost::thread
[library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  --------------------------------------------
  ` LIBS += -L/usr/local/lib -lboost_thread`
  --------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
