

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'Poppler::Document::load'](CppLinkErrorUndefinedReferenceToPoppler.htm)
================================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:5: error: undefined reference to 'Poppler::Document::load(QString const&, QByteArray const&, QByteArray const&)'`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

 

The following source code was used:

 

  -------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <poppler/qt4/poppler-qt4.h>  int main() {   const Poppler::Document * const doc      = Poppler::Document::load("test.pdf"); }`
  -------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-18T12:40:50 # #------------------------------------------------- QT       += core gui TARGET = CppGraphExample4 TEMPLATE = app SOURCES += main.cpp\         dialogmain.cpp HEADERS  += dialogmain.h FORMS    += dialogmain.ui`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the Poppler
[library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  -------------------------------------------
  ` LIBS += -L/usr/local/lib -lpoppler-qt4`
  -------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
