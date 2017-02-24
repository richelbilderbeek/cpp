[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [LibcvautomationExample7](CppLibcvautomationExample7.htm)
==========================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[libcvautomation example 7: test a simple Qt desktop application by
sending keys](CppLibcvautomationExample7.htm) is a
[libcvautomation](CppLibcvautomation.htm) example with a simple Qt
desktop application and a [libcvautomation](CppLibcvautomation.htm) test
script. The application is called from the script, and has three
buttons: two labeled 'Press me' and one labeled 'DON'T PRESS ME'. The
test presses the tab and space keys, which causes that the upper 'Press
me' button its text will change to OK, after which the 'DON'T PRESS ME'
button is pressed, which causes an error.

 

-   [Download the Qt Creator project
    'CppLibcvautomationExample7' (zip)](CppLibcvautomationExample7.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppLibcvautomationExample7/CppLibcvautomationExample7.pro
----------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample7/dialog.h
-------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();    private slots:    void on_pushButton_1_clicked();   void on_pushButton_2_clicked();   void on_pushButton_3_clicked();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample7/dialog.cpp
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <stdexcept>  #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this); }  Dialog::~Dialog() {   delete ui; }  void Dialog::on_pushButton_1_clicked() {   ui->pushButton_1->setText("OK"); }  void Dialog::on_pushButton_2_clicked() {   throw std::runtime_error("DON'T PRESS ME"); }  void Dialog::on_pushButton_3_clicked() {   ui->pushButton_3->setText("OK"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample7/main.cpp
-------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();      return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample7/CppLibcvautomationExample7.sh
----------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh #The application to test myexe=../build-CppLibcvautomationExample7-Desktop-Debug/CppLibcvautomationExample7  #The version of libcvautomation  #mytester="../../Libraries/libcvautomation/examples/cva-input" #From Git mytester="../build-CppLibcvautomationExample2-Desktop-Debug/CppLibcvautomationExample2"  if [ ! -e $myexe ] then   echo "FAIL: "$myexe" not found"   exit fi  #Start the application to test in the background ./$myexe &  #Wait for the application to appear sleep 1  #Send some spaces and tabs for i in 1 2 do   echo $i   ./$mytester -s "keyclick space"   ./$mytester -s "keyclick Tab"   sleep 1 done`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
