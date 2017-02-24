
 

 

 

 

 

([C++](Cpp.md)) [LibcvautomationExample6](CppLibcvautomationExample6.md)
==========================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[libcvautomation example 6: test a simple Qt desktop
application](CppLibcvautomationExample6.md) is a
[libcvautomation](CppLibcvautomation.md) example with a simple Qt
desktop application and a [libcvautomation](CppLibcvautomation.md) test
script. The application is called from the script, and has three
buttons: two labeled 'Press me' and one labeled 'DON'T PRESS ME'. The
test presses both 'Press me' buttons (their text will change to 'OK')
and then click the 'DON'T PRESS ME' button, which causes an error.

 

For the testing script, I have supplied part of screenshots of the
application. I guess that would I change my desktop theme (for example:
using a black theme), the test will not find the buttons anymore.

 

-   [View a screenshot of
    'CppLibcvautomationExample6' (png)](CppLibcvautomationExample6.png)
-   [Download the Qt Creator project
    'CppLibcvautomationExample6' (zip)](CppLibcvautomationExample6.zip)

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppLibcvautomationExample6/CppLibcvautomationExample6.pro
----------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2013-07-10T21:02:16 # #-------------------------------------------------  QT       += core gui  greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TEMPLATE = app   SOURCES += main.cpp\         dialog.cpp  HEADERS  += dialog.h  FORMS    += dialog.ui`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample6/dialog.h
-------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();    private slots:    void on_pushButton_1_clicked();   void on_pushButton_2_clicked();   void on_pushButton_3_clicked();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample6/dialog.cpp
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <stdexcept>  #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this); }  Dialog::~Dialog() {   delete ui; }  void Dialog::on_pushButton_1_clicked() {   ui->pushButton_1->setText("OK"); }  void Dialog::on_pushButton_2_clicked() {   throw std::runtime_error("DON'T PRESS ME"); }  void Dialog::on_pushButton_3_clicked() {   ui->pushButton_3->setText("OK"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample6/main.cpp
-------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();      return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLibcvautomationExample6/CppLibcvautomationExample6.sh
----------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh #Start the testing program in the background ./../build-CppLibcvautomationExample6-Desktop-Debug/CppLibcvautomationExample6 &  #Wait for the application to appear sleep 1  ./../../Libraries/libcvautomation/examples/cva-input -s "wait_for CppLibcvautomationExample6_pressme.png" ./../../Libraries/libcvautomation/examples/cva-input -s "icmouseclick CppLibcvautomationExample6_pressme.png"  #sleep 1  ./../../Libraries/libcvautomation/examples/cva-input -s "wait_for CppLibcvautomationExample6_pressme.png" ./../../Libraries/libcvautomation/examples/cva-input -s "icmouseclick CppLibcvautomationExample6_pressme.png"  #sleep 1  ./../../Libraries/libcvautomation/examples/cva-input -s "wait_for CppLibcvautomationExample6_dontpressme.png" ./../../Libraries/libcvautomation/examples/cva-input -s "icmouseclick CppLibcvautomationExample6_dontpressme.png"  sleep 1  #Alternative: # # 1) Move the cursor to the 'DO NOT PRESS' button # #    ./../../Libraries/libcvautomation/examples/cva-input -s "mousexy 800 450" # # 2) Gives you one second to move the mouse cursor  # #    sleep 1 # # 3) Click # #    ./../../Libraries/libcvautomation/examples/cva-input -s "mouseclick"`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

