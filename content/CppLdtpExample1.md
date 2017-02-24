



 

 

 

 

 

([C++](Cpp.md)) [ldtp example 1: don't press the red button](CppLdtpExample1.md)
==================================================================================

 

[ldtp example 1: don't press the red button](CppLdtpExample1.md) is an
[ldtp](CppLdtp.md) example.

 

Sadly, it does not work as expected. Is this due that it is tested under
[Lububtu](CppLubuntu.md)?

 

-   [View a screenshot of 'CppLdtpExample1' (png)](CppLdtpExample1.png)
-   [Download the Qt Creator project
    'CppLdtpExample1' (zip)](CppLdtpExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppLdtpExample1.pro
------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app  SOURCES += main.cpp\         cppldtpexample1dialog.cpp  HEADERS  += cppldtpexample1dialog.h  FORMS    += cppldtpexample1dialog.ui  OTHER_FILES += \     CppLdtpExample1Test.py`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

cppldtpexample1dialog.h
-----------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef CPPLDTPEXAMPLE1DIALOG_H #define CPPLDTPEXAMPLE1DIALOG_H  #include <QDialog>  namespace Ui {   class CppLdtpExample1Dialog; }  class CppLdtpExample1Dialog : public QDialog {   Q_OBJECT    public:   explicit CppLdtpExample1Dialog(QWidget *parent = 0);   ~CppLdtpExample1Dialog();    private slots:   ///DON'T PRESS THE RED BUTTON!   void on_button_2_clicked();    void on_button_1_clicked();  private:   Ui::CppLdtpExample1Dialog *ui; };  #endif // CPPLDTPEXAMPLE1DIALOG_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

cppldtpexample1dialog.cpp
-------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "cppldtpexample1dialog.h" #include <stdexcept> #include "ui_cppldtpexample1dialog.h"  CppLdtpExample1Dialog::CppLdtpExample1Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::CppLdtpExample1Dialog) {   ui->setupUi(this); }  CppLdtpExample1Dialog::~CppLdtpExample1Dialog() {   delete ui; }  void CppLdtpExample1Dialog::on_button_1_clicked() {   ui->button_1->setText("Clicked!"); }  void CppLdtpExample1Dialog::on_button_2_clicked() {   throw std::logic_error("DON'T PRESS THE RED BUTTON!"); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "cppldtpexample1dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   CppLdtpExample1Dialog w;   w.show();      return a.exec(); }  /*  richel@richel-K73E:~/Projects/Test/CppLdtpExample1$ python CppLdtpExample1Test.py Launching application Wait until it exists GTK Accessibility Module initialized Get window list Get object list Traceback (most recent call last):   File "CppLdtpExample1Test.py", line 12, in <module>     ldtp.getobjectlist('CppLdtpExample1Dialog')   File "/usr/lib/python2.7/dist-packages/ldtp/client.py", line 70, in __call__     return self.__send(self.__name, args)   File "/usr/lib/python2.7/xmlrpclib.py", line 1578, in __request     verbose=self.__verbose   File "/usr/lib/python2.7/dist-packages/ldtp/client.py", line 185, in request     raise LdtpExecutionError(e.faultString.encode('utf-8')) ldtp.client_exception.LdtpExecutionError: Unable to find window "CppLdtpExample1Dialog" richel@richel-K73E:~/Projects/Test/CppLdtpExample1$  */`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppLdtpExample1Test.py
----------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` # gsettings set org.gnome.desktop.interface toolkit-accessibility true import ldtp import ldtputils  print 'Launching application' ldtp.launchapp ('../build-CppLdtpExample1-Desktop-Debug/CppLdtpExample1') print 'Wait until it exists' ldtp.waittillguiexist('CppLdtpExample1Dialog') print 'Get window list' ldtp.getwindowlist() print 'Get object list' ldtp.getobjectlist('CppLdtpExample1Dialog') print "Clicking buttons" ldtp.click('CppLdtpExample1Dialog','btn0') ldtp.click('CppLdtpExample1Dialog','btn1') print 'All tests succeeded???'`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
