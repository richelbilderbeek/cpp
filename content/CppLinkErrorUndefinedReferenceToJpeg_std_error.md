

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Undefined reference to 'jpeg\_std\_error'](CppLinkErrorUndefinedReferenceToJpeg_std_error.htm)
================================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:89: undefined reference to `jpeg_std_error' /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:90: undefined reference to `jpeg_CreateDecompress' /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:91: undefined reference to `jpeg_stdio_src' /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:92: undefined reference to `jpeg_read_header' /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:98: undefined reference to `jpeg_destroy_decompress' /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:102: undefined reference to `jpeg_start_decompress' /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:111: undefined reference to `jpeg_read_scanlines' /MyProject/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io_private.hpp:115: undefined reference to `jpeg_finish_decompress' :-1: error: collect2: ld returned 1 exit status ``
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.3.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Boost](CppBoost.htm) version: 1.42.0

Additional [libraries](CppLibrary.htm): jpeg-8a from the [Independent
JPEG Group](http://www.ijg.org)

 

The following source code was used:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/gil/gil_all.hpp> #include <boost/gil/extension/io/jpeg_io.hpp>  int main() {   using namespace boost::gil;   rgb8_image_t img;   jpeg_read_image("test.jpg",img); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProject CONFIG   += console CONFIG   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 ../../../jpeg-8a TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the jpeg
[library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  ------------------------------------
  ` LIBS += -L/usr/local/lib -ljpeg`
  ------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
