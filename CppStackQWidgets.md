[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StackQWidgets](CppStackQWidgets.htm)
======================================================

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStackQWidgets/CppStackQWidgets.pro
--------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2015-05-25T15:45:33 # #-------------------------------------------------  QT       += core gui  greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TARGET = CppStackQWidgets TEMPLATE = app   SOURCES += main.cpp\         dialog.cpp \     mywidget.cpp  HEADERS  += dialog.h \     mywidget.h  FORMS    += dialog.ui \     mywidget.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStackQWidgets/dialog.h
---------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStackQWidgets/dialog.cpp
-----------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <QGroupBox>  #include "mywidget.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this);    //Create a QGroupBox to stack the MyWidgets   QGroupBox * const b = new QGroupBox(this);    //A fresh QGroupBox does not have a layout yet   b->setLayout(new QVBoxLayout);    //Stack the MyWidgets   for (int i=0; i!=10; ++i)   {     b->layout()->addWidget(new MyWidget(this));   }    //Use setWidget   ui->scrollArea->setWidget(b); }  Dialog::~Dialog() {   delete ui; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStackQWidgets/main.cpp
---------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();    return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStackQWidgets/mywidget.h
-----------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef MYWIDGET_H #define MYWIDGET_H  #include <QWidget>  namespace Ui { class MyWidget; }  class MyWidget : public QWidget {   Q_OBJECT  public:   explicit MyWidget(QWidget *parent = 0);   ~MyWidget();  private:   Ui::MyWidget *ui; };  #endif // MYWIDGET_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStackQWidgets/mywidget.cpp
-------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "mywidget.h" #include "ui_mywidget.h"  MyWidget::MyWidget(QWidget *parent) :   QWidget(parent),   ui(new Ui::MyWidget) {   ui->setupUi(this); }  MyWidget::~MyWidget() {   delete ui; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
