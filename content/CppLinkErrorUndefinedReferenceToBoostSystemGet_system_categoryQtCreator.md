[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png)![Qt](PicQt.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [Undefined reference to 'boost::system::get\_system\_category()' (using Qt Creator)](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_categoryQtCreator.htm)
================================================================================================================================================================================================================================================================================

 

[link error](CppLinkError.htm) ([BEI](CppBei.htm) 5).

 

One of the versions of [Undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.htm),
encountered when using [Qt Creator](CppQtCreator.htm).

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function '__static_initialization_and_destruction_0': /usr/include/boost/system/error_code.hpp:205: error: undefined reference to 'boost::system::get_system_category()' /usr/include/boost/system/error_code.hpp:206: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:211: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:212: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:213: error: undefined reference to 'boost::system::get_system_category()' :: error: collect2: ld returned 1 exit status`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.04 (lucid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.40
-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-08-02T13:45:48 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppFile CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

If you want to work with [Boost.Asio](CppAsio.htm):

 

  ------------------------------
  ` #include <boost/asio.hpp>`
  ------------------------------

 

Or if you want to work with [Boost.Filesystem](CppFilesystem.htm):

 

  ------------------------------------
  ` #include <boost/filesystem.hpp>`
  ------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to the [Qt project file](CppQtProjectFile.htm):

 

  ---------------------------
  ` LIBS += -lboost_system`
  ---------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
