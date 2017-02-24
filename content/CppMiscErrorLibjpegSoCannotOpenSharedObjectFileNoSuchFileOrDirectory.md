
 

 

 

 

 

([C++](Cpp.md)) [libjpeg.so.8: cannot open shared object file: No such file or directory](CppMiscErrorLibjpegSoCannotOpenSharedObjectFileNoSuchFileOrDirectory.md)
====================================================================================================================================================================

 

[Misc error](CppMiscError.md).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Starting /MyProject... /MyProject: error while loading shared libraries: libjpeg.so.8: cannot open shared object file: No such file or directory /MyProject exited with code 127`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQt.md) 1.3.1

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Boost](CppBoost.md) version: 1.42.0

Additional [libraries](CppLibrary.md): jpeg-8a from the [Independent
JPEG Group](http://www.ijg.org)

 

The following source code was used:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/gil/gil_all.hpp> #include <boost/gil/extension/io/jpeg_io.hpp>  int main() {   using namespace boost::gil;   rgb8_image_t img;   jpeg_read_image("test.jpg",img); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProject CONFIG   += console CONFIG   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 ../../../jpeg-8a TEMPLATE = app SOURCES += main.cpp LIBS += -L/usr/local/lib -ljpeg`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

(Murat Karaöz contacted me to notify me of the solution. Thanks Murat!)

 

The solution (from [Stack
Overflow](http://stackoverflow.com/questions/5545580/pil-libjpeg-so-8-cannot-open-shared-object-file-no-such-file-or-directory)):

  -----------------------------------------------------------------------------------------------------------------------
  ` A quick fix is to add the directory that contains libjpeg.so.8 to your /etc/ld.so.conf file, and then run ldconfig`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

 

