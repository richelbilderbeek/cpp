



 

 

 

 

 

([C++](Cpp.md)) ['jpeg\_read\_image' was not declared in this scope](CppCompileErrorJpeg_read_imageWasNotDeclaredInThisScope.md)
==================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:8: error: 'jpeg_read_image' was not declared in this scope`
  ----------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.3.1

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Boost](CppBoost.md) version: 1.42.0

 

The following code caused the error:

 

  ------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/gil/gil_all.hpp>  int main() {   using namespace boost::gil;   rgb8_image_t img;   jpeg_read_image("test.jpg",img); }`
  ------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProjectName peglib   += console peglib   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Unknown. Feel encouraged to [contact me](Contact.md) if you know the
solution.

 

 

 

 

 

Unsuccessfull trials
--------------------

 

 

 

 

 

### [\#include](CppInclude.md) the needed header file directly

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/gil/gil_all.hpp> #include <boost/gil/extension/io/jpeg_io.hpp>  int main() {   using namespace boost::gil;   rgb8_image_t img;   jpeg_read_image("test.jpg",img); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

For me, this resulted in the [compile error](CppCompileError.md)
[jpeglib.h: No such file or
directory](CppCompileErrorJpeglibHnoSuchFileOrDirectory.md).

 

 

 

 

 





 



