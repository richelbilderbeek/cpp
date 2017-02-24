[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QScrollArea: example 1](CppQScrollAreaExample1.htm)
=====================================================================

 

[QScrollArea: example 1](CppQScrollAreaExample1.htm) is a
[QScrollArea](CppQScrollArea.htm) example.

 

-   [View a screenshot of
    'CppQScrollAreaExample1' (png)](CppQScrollAreaExample1.png)
-   [Download the Qt Creator project
    'CppQScrollAreaExample1' (zip)](CppQScrollAreaExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQScrollAreaExample1.pro
-------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();    private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <QVBoxLayout> #include <QLabel>  #include "ui_dialog.h"   Dialog::Dialog(QWidget *parent)   : QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this);    QVBoxLayout * const layout = new QVBoxLayout(ui->scrollAreaWidgetContents);   for(int i=0; i!=100; ++i)   {     layout->addWidget(new QLabel(QString::number(i)));   }  }  Dialog::~Dialog() {   delete ui; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();      return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
