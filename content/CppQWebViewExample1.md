



 

 

 

 

 

([C++](Cpp.htm)) [QWebViewExample1](CppQWebViewExample1.htm)
============================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QWebView example 1](CppQWebViewExample1.htm) is a
[QWebView](CppQWebView.htm) [example](CppExample.htm).

 

-   [View a screenshot of
    CppQWebViewExample1 (png)](CppQWebViewExample1.png)
-   [Download the Qt Creator project
    'CppQWebViewExample1' (zip)](CppQWebViewExample1.zip)

 

This example might cause following errors:

-   ![OK](PicGreen.png) [Unknown module(s) in QT: location
    sensors](CppQmakeErrorUnknownModulesInQtLocationSensors.htm)
-   ![OK](PicGreen.png) [cannot find
    -lgstapp-0.10](CppLinkErrorCannotFindLgstapp.htm)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQWebViewExample1/CppQWebViewExample1.pro
--------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT += core gui  cross_compile {   message(Crosscompiling) }  greaterThan(QT_MAJOR_VERSION, 4) {   message(Qt5)   QT += widgets   !cross_compile {     message(Not crosscompiling)     QT += webkitwidgets   } } else {   message(Qt4)   QT += webkit }  TEMPLATE = app  SOURCES += \   main.cpp\   cppqwebviewexample1dialog.cpp  HEADERS  += cppqwebviewexample1dialog.h  FORMS    += cppqwebviewexample1dialog.ui`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQWebViewExample1/cppqwebviewexample1dialog.h
-------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef CPPQWEBVIEWEXAMPLE1DIALOG_H #define CPPQWEBVIEWEXAMPLE1DIALOG_H  #include <QDialog>  namespace Ui {   class CppQWebViewExample1Dialog; }  class CppQWebViewExample1Dialog : public QDialog {   Q_OBJECT    public:   explicit CppQWebViewExample1Dialog(QWidget *parent = 0);   ~CppQWebViewExample1Dialog();    private:   Ui::CppQWebViewExample1Dialog *ui; };  #endif // CPPQWEBVIEWEXAMPLE1DIALOG_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQWebViewExample1/cppqwebviewexample1dialog.cpp
---------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "cppqwebviewexample1dialog.h" #include "ui_cppqwebviewexample1dialog.h"  CppQWebViewExample1Dialog::CppQWebViewExample1Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::CppQWebViewExample1Dialog) {   ui->setupUi(this);    ui->webView->setHtml(     "<h1>Hello World</h1>"     "<h2>Hello World</h2>"     "<h3>Hello World</h3>"     "<p>Hello World</p>"     "<ul><li>Hello World</li></ul>"   ); }  CppQWebViewExample1Dialog::~CppQWebViewExample1Dialog() {   delete ui; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQWebViewExample1/main.cpp
------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "cppqwebviewexample1dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   CppQWebViewExample1Dialog w;   w.show();     return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
