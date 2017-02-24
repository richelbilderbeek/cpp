

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystem.htm)
===================================================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function '__static_initialization_and_destruction_0': /usr/include/boost/system/error_code.hpp:205: error: undefined reference to 'boost::system::get_system_category()' /usr/include/boost/system/error_code.hpp:206: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:211: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:212: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:213: error: undefined reference to 'boost::system::get_system_category()' /MyFolder/main.o:: In function 'boost::asio::error::get_system_category()': /usr/include/boost/asio/error.hpp:218: error: undefined reference to 'boost::system::get_system_category()' :: error: collect2: ld returned 1 exit status`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.2.0

[Project type](CppQtCreatorNewProject_2_5_2.png): Qt4 Console
Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.40

 

The following source code was used:

 

  ------------------------------------------------------------------------------------
  ` #include <boost/asio.hpp>  int main() {   boost::asio::io_service io_service; }`
  ------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-21T19:37:18 # #------------------------------------------------- QT       += core QT       -= gui TARGET = MyTarget CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the [Asio](CppAsio.htm)
[library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  --------------------------------------------
  ` LIBS += -L/usr/local/lib -lboost_system`
  --------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0
Strict](http://www.w3.org/Icons/valid-xhtml10){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
