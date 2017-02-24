
 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png)![Qt](PicQt.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [Undefined reference to 'boost::system::get\_system\_category()' (using Qt Creator)](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_categoryQtCreator.md)
================================================================================================================================================================================================================================================================================

 

[link error](CppLinkError.md) ([BEI](CppBei.md) 5).

 

One of the versions of [Undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.md),
encountered when using [Qt Creator](CppQtCreator.md).

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function '__static_initialization_and_destruction_0': /usr/include/boost/system/error_code.hpp:205: error: undefined reference to 'boost::system::get_system_category()' /usr/include/boost/system/error_code.hpp:206: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:211: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:212: error: undefined reference to 'boost::system::get_generic_category()' /usr/include/boost/system/error_code.hpp:213: error: undefined reference to 'boost::system::get_system_category()' :: error: collect2: ld returned 1 exit status`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.04 (lucid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.40
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-08-02T13:45:48 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppFile CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

If you want to work with [Boost.Asio](CppAsio.md):

 

  ------------------------------
  ` #include <boost/asio.hpp>`
  ------------------------------

 

Or if you want to work with [Boost.Filesystem](CppFilesystem.md):

 

  ------------------------------------
  ` #include <boost/filesystem.hpp>`
  ------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to the [Qt project file](CppQtProjectFile.md):

 

  ---------------------------
  ` LIBS += -lboost_system`
  ---------------------------

 

 

 

 

 

 

