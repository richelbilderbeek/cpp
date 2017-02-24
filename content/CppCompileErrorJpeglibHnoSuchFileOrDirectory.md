



 

 

 

 

 

([C++](Cpp.md)) [jpeglib.h: No such file or directory](CppCompileErrorJpeglibHnoSuchFileOrDirectory.md)
=========================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/../../../boost_1_42_0/boost/gil/extension/io/jpeg_dynamic_io.hpp:31: In file included from ../../../boost_1_42_0/boost/gil/extension/io/jpeg_dynamic_io.hpp:31, /MyFolder/main.cpp:19: from main.cpp:19: /MyFolder/../../../boost_1_42_0/boost/gil/extension/io/jpeg_io.hpp:29: error: jpeglib.h: No such file or directory`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.3.1

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Boost](CppBoost.md) version: 1.42.0

 

The following code caused the error:

 

  ----------------------------------------------------------
  ` #include <boost/gil/extension/io/jpeg_dynamic_io.hpp>`
  ----------------------------------------------------------

 

The [compiler](CppCompiler.md) takes you to the following code in
/MyFolder/boost\_1\_42\_0/boost/gil/extension/io/jpeg\_io.hpp:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdio> #include <algorithm> #include <string> #include <boost/static_assert.hpp> #include <boost/shared_ptr.hpp> extern "C" {   #include <jpeglib.h> //THIS LINE } #include "io_error.hpp" #include "jpeg_io_private.hpp" `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The following project file was used:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProjectName peglib   += console peglib   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Try [\#including](CppInclude.md) the default header file:

 

  -------------------------------------
  ` #include <boost/gil/gil_all.hpp>`
  -------------------------------------

 

 

 

 

 





 



