[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to define a OnKeyPress Event?](CppQtOnKeyPress.htm)
==========================================================================================

 

[How to define a OnKeyPress Event?](CppQtOnKeyPress.htm) is a [QT
FAQ](CppQtFaq.htm) for if you want to respond to key presses/releases.

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 [GUI](CppGui.htm) Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

-   [View a screenshot of 'CppQtOnKeyPress' (png)](CppQtOnKeyPress.png)
-   [Download the Qt Creator project
    'CppQtOnKeyPress' (zip)](CppQtOnKeyPress.zip)

 

 

 

 

 

### main.cpp

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialog.h

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog> struct QKeyEvent;  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();  protected:   void changeEvent(QEvent *e); private:   Ui::Dialog *ui; private slots:   void keyPressEvent(QKeyEvent * e);   void keyReleaseEvent(QKeyEvent * e);  };  //From http://www.richelbilderbeek.nl/CppIntToQtStr.htm QString IntToQtStr(const int i);  #endif // DIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialog.cpp

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QKeyEvent> #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {   ui->setupUi(this); }  Dialog::~Dialog() {   delete ui; }  void Dialog::changeEvent(QEvent *e) {     QDialog::changeEvent(e);     switch (e->type()) {     case QEvent::LanguageChange:         ui->retranslateUi(this);         break;     default:         break;     } }  void Dialog::keyPressEvent(QKeyEvent * e) {   switch (e->type())   {     case QEvent::KeyPress:       ui->text_edit->appendPlainText("Key pressed: " + IntToQtStr(e->key()));       break;     default:       break;   } }  void Dialog::keyReleaseEvent(QKeyEvent * e) {   switch (e->type())   {     case QEvent::KeyRelease:       ui->text_edit->appendPlainText("Key released: " + IntToQtStr(e->key()));       break;     default:       break;   } }  //From http://www.richelbilderbeek.nl/CppIntToQtStr.htm QString IntToQtStr(const int i) {   QString s;   s.setNum(i);   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
