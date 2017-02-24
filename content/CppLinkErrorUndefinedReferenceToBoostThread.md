



 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'boost::thread::thread()'](CppLinkErrorUndefinedReferenceToBoostThread.md)
====================================================================================================================

 

[Link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:5: error: undefined reference to 'boost::thread::thread()' /MyFolder/main.cpp:5: error: undefined reference to 'boost::thread::~thread()' :: error: collect2: ld returned 1 exit status`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.2.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Boost](CppBoost.md): version 1.40

 

The following source code was used:

 

  -------------------------------------------------------------------
  ` #include <boost/thread.hpp>  int main() {   boost::thread t; }`
  -------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-21T19:37:18 # #------------------------------------------------- QT       += core QT       -= gui TARGET = MyTarget CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.md) against the boost::thread
[library](CppLibrary.md). Add the following line to your [project
file](CppQtProjectFile.md):

 

  --------------------------------------------
  ` LIBS += -L/usr/local/lib -lboost_thread`
  --------------------------------------------

 

 

 

 

 





 



