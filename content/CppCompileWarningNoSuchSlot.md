
 

 

 

 

 

([C++](Cpp.md)) [Object::connect: No such slot QDialog::my\_slot()](CppCompileWarningNoSuchSlot.md)
=====================================================================================================

 

[Compile warning](CppCompileWarning.md).

 

 

 

 

 

Full warning message
--------------------

 

  --------------------------------------------------------------------------------------
  ` Object::connect: No such slot QDialog::buttonClicked() in ../MyFolder/main.cpp:40`
  --------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system:
[Ubuntu](http://en.wikipedia.org/wiki/Ubuntu_%28operating_system%29)

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 GUI Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Boost](CppBoost.md): version 1.40
-   [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-22T12:56:24 # #------------------------------------------------- QT += core gui TARGET = CppQtExample11 TEMPLATE = app SOURCES += main.cpp HEADERS += \     MyDialog.h`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

 

 

 

 

### main.cpp

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp> #include <QtGui/QApplication> #include <QDialog> #include <QPushButton> #include <QVBoxLayout> #include "MyDialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   boost::scoped_ptr<MyDialog> dialog(new MyDialog);   boost::scoped_ptr<QVBoxLayout> layout(new QVBoxLayout);   boost::scoped_ptr<QPushButton> button1(new QPushButton);    button1->connect(     button1.get(),SIGNAL(clicked()),     dialog.get(),SLOT(buttonClicked()));   button2->setText("Quit");    layout->addWidget(button1.get());    dialog->setLayout(layout.get());    dialog->show();   return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

### MyDialog.h

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef MYDIALOG_H #define MYDIALOG_H  #include <QDialog>  class MyDialog : public QDialog {   public slots:     void buttonClicked() { } };  #endif // MYDIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the [Q\_OBJECT](CppQ_OBJECT.md) at the beginning of the MyDialog
[class](CppClass.md) [declaration](CppDeclaration.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef MYDIALOG_H #define MYDIALOG_H  #include <QDialog>  class MyDialog : public QDialog {   Q_OBJECT    public slots:     void buttonClicked() { } };  #endif // MYDIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that a complete example of the corrected version of this [compile
warning](CppCompileWarning.md) can be found at [Qt example 12: creating
a custom QDialog with slot](CppQtExample12.md).

 

 

 

 

 

