



 

 

 

 

 

([C++](Cpp.md)) [Undefined reference to 'QwtPlot::QwtPlot(QWidget\*)'](CppLinkErrorUndefinedReferenceToQwtPlot.md)
====================================================================================================================

 

[link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:8: error: undefined reference to 'QwtPlot::QwtPlot(QWidget*)' :: error: collect2: ld returned 1 exit status`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): Console Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-21T19:21:43 # #------------------------------------------------- QT       += core gui TARGET = CppQwtExample1 TEMPLATE = app SOURCES += main.cpp LIBS += -L/usr/local/lib -lqwt`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication>  #include <qwt-qt4/qwt_plot.h>  int main(int argc, char **argv) {   QApplication a(argc, argv);   QwtPlot plot;   plot.show();   return a.exec(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Do not link to qwt, but to qwt-qt. You will also need to link to QtSvg
(otherwise the [Undefined reference to 'QGraphicsItemPrivate::height()
const'](CppLinkErrorUndefinedReferenceToQGraphicsItemPrivateHeight.md)
[link error](CppLinkError.md) occurs).

 

Change the [Qt Creator](CppQtCreator.md) [project
file](CppQtProjectFile.md) to the following:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-21T19:21:43 # #------------------------------------------------- QT       += core gui TARGET = CppQwtExample1 TEMPLATE = app SOURCES += main.cpp LIBS += -L/usr/local/lib -lqwt-qt4 LIBS += -L/usr/local/lib -lQtSvg`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



