
 

 

 

 

 

([C++](Cpp.md)) [Undefined reference to 'SSLv2\_method'](CppLinkErrorUndefinedReferenceToSSLv2_method.md)
===========================================================================================================

 

[link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

(I failed to replicate this error on [Ubuntu](http://www.ubuntu.com)
using [Qt Creator](CppQtCreator.md) 2.0.0 and [Boost](CppBoost.md)
1.40).

 

  ------------------------------------------
  ` Undefined reference to 'SSLv2_method'`
  ------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system: [Xubuntu](http://www.xubuntu.org) 9.10 Karmic Koala

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.2.1

[Project type](CppQtProjectType.md): Console Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Boost](CppBoost.md): version 1.38
-   [Qt](CppQt.md): version supplied with [Qt
    Creator](CppQtCreator.md) 1.2.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-23T09:55:24 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppLinkErrorUndefinedReferenceToSSLv2_method CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp LIBS += -L/usr/local/lib -lboost_system`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

  --------------------------------------------------
  ` #include <boost/asio/ssl.hpp>  int main () {}`
  --------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to the [Qt Creator](CppQtCreator.md) [project
file](CppQtProjectFile.md):

 

  -----------------------------------
  ` LIBS += -L/usr/local/lib -lssl`
  -----------------------------------

 

 

 

 

 

 

