



 

 

 

 

 

([C++](Cpp.htm)) [jconfig.h: No such file or directory](CppCompileErrorJconfigHnoSuchFileOrDirectory.htm)
=========================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io.hpp:29: In file included from ../../../boost_1_42_0/boost/gil/extension/io/jpeg_io.hpp:29, /MyFolder/../../../boost_1_42_0/boost/gil/extension/io/jpeg_dynamic_io.hpp:31: from ../../../boost_1_42_0/boost/gil/extension/io/jpeg_dynamic_io.hpp:31, /MyFolder/main.cpp:19: from main.cpp:19: /MyFolder/../../../jpeg-8a/jpeglib.h:25: error: jconfig.h: No such file or directory`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

 

The following code caused the error:

 

  ----------------------------------------------------------
  ` #include <boost/gil/extension/io/jpeg_dynamic_io.hpp>`
  ----------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProjectName CONFIG   += console CONFIG   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 ../../../jpeg-8a TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to build the the jpeg-8a [library](CppLibrary.htm), as this
will create the file jconfig.h. Go to the jpeg-8a
[library](CppLibrary.htm) folder and read the install.txt file.

 

When using Ubuntu 10.04, the following commands worked for me:

  -------------------------------------------------
  ` ./configure make make test sudo make install`
  -------------------------------------------------

 

You will probably need to add the following line to your [project
file](CppQtProjectFile.htm):

 

  ------------------------------------
  ` LIBS += -L/usr/local/lib -ljpeg`
  ------------------------------------

 

 

 

 

 

Failed attempts
---------------

 

 

 

 

 

### Remove the jpeg-8a [library](CppLibrary.htm)

 

Remove the jpeg-8a [library](CppLibrary.htm) from the INCLUDEPATH.

 

Then, you might then get the [jpeglib.h: No such file or
directory](CppCompileErrorJpeglibHnoSuchFileOrDirectory.htm) [compile
error](CppCompileError.htm).

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
