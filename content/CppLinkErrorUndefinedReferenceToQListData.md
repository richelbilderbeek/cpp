



 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'QListData::detach\_grow'](CppLinkErrorUndefinedReferenceToQListData.md)
==================================================================================================================

 

[Link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:5: error: undefined reference to 'QListData::detach_grow(int*, int)'  `
  ----------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

 

The following source code was used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QListData/qt4/QListData-qt4.h>  int main() {   const QListData::Document * const doc      = QListData::detach_grow("test.pdf"); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-18T12:40:50 # #------------------------------------------------- QT       += core gui TARGET = CppGraphExample4 LIBS += -L/usr/local/lib -lpoppler-qt4 TEMPLATE = app SOURCES += main.cpp\         dialogmain.cpp HEADERS  += dialogmain.h FORMS    += dialogmain.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.md) against the QtXml
[library](CppLibrary.md). Add the following line to your [project
file](CppQtProjectFile.md):

 

  --------------
  ` QT += xml`
  --------------

 

 

 

 

 





 



