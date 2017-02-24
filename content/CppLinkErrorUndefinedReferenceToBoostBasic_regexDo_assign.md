
 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'boost::basic\_regex&lt;char, boost::regex\_traits&lt;char, boost::cpp\_regex\_traits&lt;char&gt; &gt; &gt;::do\_assign(char const\*, char const\*, unsigned int)'](CppLinkErrorUndefinedReferenceToBoostBasic_regexDo_assign.md)
===========================================================================================================================================================================================================================================================================

 

[link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  /MyFolder/main.o:: In function `boost::basic_regex<char, boost::regex_traits<char, boost::cpp_regex_traits<char> > >::assign(char const*, char const*, unsigned int)': /usr/include/boost/regex/v4/basic_regex.hpp:425: error: undefined reference to `boost::basic_regex<char, boost::regex_traits<char, boost::cpp_regex_traits<char> > >::do_assign(char const*, char const*, unsigned int)' :: error: collect2: ld returned 1 exit status ``
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): Console Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Boost](CppBoost.md): version 1.40

 

-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToBoostBasic\_regexDo\_assign' (zip)](CppLinkErrorUndefinedReferenceToBoostBasic_regexDo_assign.zip)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-08-06T13:56:29 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppRegexExample1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

  ---------------------------------------------------------------------------------------------------------
  ` #include <boost/regex.hpp>  int main() {   const boost::regex dutch_zip_code("[a-zA-z]{4}\\d{2}"); }`
  ---------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to the [Qt Creator](CppQtCreator.md) [project
file](CppQtProjectFile.md):

 

  -------------------------------------------
  ` LIBS += -L/usr/local/lib -lboost_regex`
  -------------------------------------------

 

 

 

 

 

 

