

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Undefined reference to 'SSLv2\_method'](CppLinkErrorUndefinedReferenceToSSLv2_method.htm)
===========================================================================================================

 

[link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

(I failed to replicate this error on [Ubuntu](http://www.ubuntu.com)
using [Qt Creator](CppQtCreator.htm) 2.0.0 and [Boost](CppBoost.htm)
1.40).

 

  ------------------------------------------
  ` Undefined reference to 'SSLv2_method'`
  ------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system: [Xubuntu](http://www.xubuntu.org) 9.10 Karmic Koala

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.2.1

[Project type](CppQtProjectType.htm): Console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.38
-   [Qt](CppQt.htm): version supplied with [Qt
    Creator](CppQtCreator.htm) 1.2.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
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

 

Add the following line to the [Qt Creator](CppQtCreator.htm) [project
file](CppQtProjectFile.htm):

 

  -----------------------------------
  ` LIBS += -L/usr/local/lib -lssl`
  -----------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
