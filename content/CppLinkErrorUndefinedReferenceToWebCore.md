



 

 

 

 

 

([C++](Cpp.htm)) [LinkErrorUndefinedReferenceToWebCore](CppLinkErrorUndefinedReferenceToWebCore.htm)
====================================================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[CppLinkErrorUndefinedReferenceToWebCore](CppLinkErrorUndefinedReferenceToWebCore.htm)
is a [link error](CppLinkError.htm).

 

-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToWebCore' (zip)](CppLinkErrorUndefinedReferenceToWebCore.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppLinkErrorUndefinedReferenceToWebCore/CppLinkErrorUndefinedReferenceToWebCore.pro
------------------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT += core gui QT += webkit TEMPLATE = app  SOURCES += \   main.cpp\   cppqwebviewexample1dialog.cpp  HEADERS  += cppqwebviewexample1dialog.h  FORMS    += cppqwebviewexample1dialog.ui`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLinkErrorUndefinedReferenceToWebCore/cppqwebviewexample1dialog.h
---------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef CPPQWEBVIEWEXAMPLE1DIALOG_H #define CPPQWEBVIEWEXAMPLE1DIALOG_H  #include <QDialog>  namespace Ui {   class CppQWebViewExample1Dialog; }  class CppQWebViewExample1Dialog : public QDialog {   Q_OBJECT    public:   explicit CppQWebViewExample1Dialog(QWidget *parent = 0);   ~CppQWebViewExample1Dialog();    private:   Ui::CppQWebViewExample1Dialog *ui; };  #endif // CPPQWEBVIEWEXAMPLE1DIALOG_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLinkErrorUndefinedReferenceToWebCore/cppqwebviewexample1dialog.cpp
-----------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "cppqwebviewexample1dialog.h" #include "ui_cppqwebviewexample1dialog.h"  CppQWebViewExample1Dialog::CppQWebViewExample1Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::CppQWebViewExample1Dialog) {   ui->setupUi(this);    ui->webView->setHtml(     "<h1>Hello World</h1>"     "<h2>Hello World</h2>"     "<h3>Hello World</h3>"     "<p>Hello World</p>"     "<ul><li>Hello World</li></ul>"   ); }  CppQWebViewExample1Dialog::~CppQWebViewExample1Dialog() {   delete ui; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLinkErrorUndefinedReferenceToWebCore/main.cpp
--------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "cppqwebviewexample1dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   CppQWebViewExample1Dialog w;   w.show();      return a.exec(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLinkErrorUndefinedReferenceToWebCore/CppLinkErrorUndefinedReferenceToWebCore.sh
------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash #From http://richelbilderbeek.nl/CppHelloBoostQtCreatorLubuntuToWindows.htm echo "Cross compiling to Windows"  myfile="i686-pc-mingw32-qmake" mytarget="CppLinkErrorUndefinedReferenceToWebCore" myprofile=$mytarget.pro   if [ -e $myfile ] then   echo "MXE crosscompiler '$myfile' found" else   echo "MXE crosscompiler '$myfile' not found directly, but perhaps it is in the PATH"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: qmake CppHelloBoostQtCreatorLubuntu.pro"   exit fi  echo "2/2: making makefile"  make  if [ -e /release/$mytarget.exe ] then   echo "SUCCESS" else   echo "FAIL"   echo "Note: check if mxe can build glibc" #Knowledge fi  #Cleaning up rm ui_*.* rm Makefile rm Makefile.* rm -r debug rm -r release`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
