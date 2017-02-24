
 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'Poppler::Document::load'](CppLinkErrorUndefinedReferenceToPoppler.md)
================================================================================================================

 

[Link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:5: error: undefined reference to 'Poppler::Document::load(QString const&, QByteArray const&, QByteArray const&)'`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

 

The following source code was used:

 

  -------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <poppler/qt4/poppler-qt4.h>  int main() {   const Poppler::Document * const doc      = Poppler::Document::load("test.pdf"); }`
  -------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-18T12:40:50 # #------------------------------------------------- QT       += core gui TARGET = CppGraphExample4 TEMPLATE = app SOURCES += main.cpp\         dialogmain.cpp HEADERS  += dialogmain.h FORMS    += dialogmain.ui`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.md) against the Poppler
[library](CppLibrary.md). Add the following line to your [project
file](CppQtProjectFile.md):

 

  -------------------------------------------
  ` LIBS += -L/usr/local/lib -lpoppler-qt4`
  -------------------------------------------

 

 

 

 

 

 

