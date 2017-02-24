



 

 

 

 

 

([C++](Cpp.htm)) [Undefined reference to 'QGraphicsScene::QGraphicsScene(QObject\*)'](CppLinkErrorUndefinedReferenceToQGraphicsScene.htm)
=========================================================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:9: undefined reference to 'QGraphicsScene::QGraphicsScene(QObject*)' /MyFolder/main.cpp:5: undefined reference to 'QGraphicsScene::~QGraphicsScene()'`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 1.3.1

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

 

  ----------------------------------------------------------------------------
  ` #include <QtGui/QGraphicsScene>  int main() {   QGraphicsScene scene; }`
  ----------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

As the [link error](CppLinkError.htm) indicates,
[QGraphicsScene](CppQGraphicsScene.htm) is included but not added to
project. The project file might look like this:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-04-30T13:50:36 # #-------------------------------------------------  QT       -= gui  TARGET = CppQtHelloWorldWindowed CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

If you want to work with [QGraphicsScene](CppQGraphicsScene.htm) you
will need to add QtGui to your project in the [select required modules
dialog](CppQtCreatorSelectRequiredModules.png) in the project creation
wizard. One (correct or incorrect?) way to remove it is by changing the
project file to:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-04-30T13:50:36 # #-------------------------------------------------  TARGET = CppQtHelloWorldWindowed CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



