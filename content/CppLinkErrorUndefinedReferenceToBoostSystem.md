
 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystem.md)
===================================================================================================================================

 

[Link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function '__static_initialization_and_destruction_0': /usr/include/boost/system/error_code.hpp:205: error: undefined reference to 'boost::system::get_system_category()' /usr/include/boost/system/error_code.hpp:206: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:211: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:212: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:213: error: undefined reference to 'boost::system::get_system_category()' /MyFolder/main.o:: In function 'boost::asio::error::get_system_category()': /usr/include/boost/asio/error.hpp:218: error: undefined reference to 'boost::system::get_system_category()' :: error: collect2: ld returned 1 exit status`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.2.0

[Project type](CppQtCreatorNewProject_2_5_2.png): Qt4 Console
Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Boost](CppBoost.md): version 1.40

 

The following source code was used:

 

  ------------------------------------------------------------------------------------
  ` #include <boost/asio.hpp>  int main() {   boost::asio::io_service io_service; }`
  ------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-21T19:37:18 # #------------------------------------------------- QT       += core QT       -= gui TARGET = MyTarget CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.md) against the [Asio](CppBoostAsio.md)
[library](CppLibrary.md). Add the following line to your [project
file](CppQtProjectFile.md):

 

  --------------------------------------------
  ` LIBS += -L/usr/local/lib -lboost_system`
  --------------------------------------------

 

 

 

 

 

 

[![Valid XHTML 1.0
Strict](http://www.w3.org/Icons/valid-xhtml10){width="88"

