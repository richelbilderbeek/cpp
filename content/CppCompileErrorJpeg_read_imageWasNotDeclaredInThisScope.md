



 

 

 

 

 

([C++](Cpp.htm)) ['jpeg\_read\_image' was not declared in this scope](CppCompileErrorJpeg_read_imageWasNotDeclaredInThisScope.htm)
==================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:8: error: 'jpeg_read_image' was not declared in this scope`
  ----------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.3.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Boost](CppBoost.htm) version: 1.42.0

 

The following code caused the error:

 

  ------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/gil/gil_all.hpp>  int main() {   using namespace boost::gil;   rgb8_image_t img;   jpeg_read_image("test.jpg",img); }`
  ------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProjectName peglib   += console peglib   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Unknown. Feel encouraged to [contact me](Contact.htm) if you know the
solution.

 

 

 

 

 

Unsuccessfull trials
--------------------

 

 

 

 

 

### [\#include](CppInclude.htm) the needed header file directly

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/gil/gil_all.hpp> #include <boost/gil/extension/io/jpeg_io.hpp>  int main() {   using namespace boost::gil;   rgb8_image_t img;   jpeg_read_image("test.jpg",img); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

For me, this resulted in the [compile error](CppCompileError.htm)
[jpeglib.h: No such file or
directory](CppCompileErrorJpeglibHnoSuchFileOrDirectory.htm).

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
