



 

 

 

 

 

([C++](Cpp.htm)) [Object::connect: No such slot QDialog::my\_slot()](CppCompileWarningNoSuchSlot.htm)
=====================================================================================================

 

[Compile warning](CppCompileWarning.htm).

 

 

 

 

 

Full warning message
--------------------

 

  --------------------------------------------------------------------------------------
  ` Object::connect: No such slot QDialog::buttonClicked() in ../MyFolder/main.cpp:40`
  --------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system:
[Ubuntu](http://en.wikipedia.org/wiki/Ubuntu_%28operating_system%29)

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 GUI Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.40
-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
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

 

Add the [Q\_OBJECT](CppQ_OBJECT.htm) at the beginning of the MyDialog
[class](CppClass.htm) [declaration](CppDeclaration.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef MYDIALOG_H #define MYDIALOG_H  #include <QDialog>  class MyDialog : public QDialog {   Q_OBJECT    public slots:     void buttonClicked() { } };  #endif // MYDIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that a complete example of the corrected version of this [compile
warning](CppCompileWarning.htm) can be found at [Qt example 12: creating
a custom QDialog with slot](CppQtExample12.htm).

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
