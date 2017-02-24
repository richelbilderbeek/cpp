[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'boost::filesystem::detail::get\_current\_path\_api'](CppLinkErrorUndefinedReferenceToBoostFilesystemDetailGet_current_path_api.htm)
=============================================================================================================================================================================

 

[link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  /home/richel/qtsdk-2010.04/bin/Projects/Website/CppFile-build-desktop/main.o:: In function `boost::filesystem::basic_path<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, boost::filesystem::path_traits> boost::filesystem::current_path<boost::filesystem::basic_path<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, boost::filesystem::path_traits> >()': /usr/include/boost/filesystem/operations.hpp:530: error: undefined reference to `boost::filesystem::detail::get_current_path_api(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)' :: error: collect2: ld returned 1 exit status ``
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm): Console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.40
-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-08-02T13:45:48 # #------------------------------------------------- QT       += core QT       -= gui TARGET = MyTarget CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app LIBS += -L/usr/local/lib -lboost_system SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/filesystem.hpp>  int main() {   boost::filesystem::path my_path(     boost::filesystem::initial_path<boost::filesystem::path>()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to the [Qt project file](CppQtProjectFile.htm):

 

  ------------------------------------------------
  ` LIBS += -L/usr/local/lib -lboost_filesystem`
  ------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
