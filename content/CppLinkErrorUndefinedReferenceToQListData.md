



 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'QListData::detach\_grow'](CppLinkErrorUndefinedReferenceToQListData.htm)
==================================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:5: error: undefined reference to 'QListData::detach_grow(int*, int)'  `
  ----------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

 

The following source code was used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QListData/qt4/QListData-qt4.h>  int main() {   const QListData::Document * const doc      = QListData::detach_grow("test.pdf"); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-18T12:40:50 # #------------------------------------------------- QT       += core gui TARGET = CppGraphExample4 LIBS += -L/usr/local/lib -lpoppler-qt4 TEMPLATE = app SOURCES += main.cpp\         dialogmain.cpp HEADERS  += dialogmain.h FORMS    += dialogmain.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the QtXml
[library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  --------------
  ` QT += xml`
  --------------

 

 

 

 

 





 



