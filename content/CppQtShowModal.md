[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to show a dialog modally?](CppQtShowModal.htm) or [How to show a pop-up window?](CppQtShowModal.htm)
===========================================================================================================================================

 

[How to show a dialog modally?](CppQtShowModal.htm) is a [QT
FAQ](CppQtFaq.htm) one has to know the answer of for pop-up windows.

 

The answer is to call the 'exec' method of the dialog, as in the method
below:

 

  -----------------------------------------------------------------------------------------------------------------------------------
  ` void DialogMain::onClickShow() {   boost::shared_ptr<DialogPopUp> f(new DialogPopUp);   f->exec(); //Show the pop-up modally }`
  -----------------------------------------------------------------------------------------------------------------------------------

 

For a full working example, you can:

-   View the source of the Qt Creator project 'CppQtShowModal' below
-   [Download the Qt Creator project
    'CppQtShowModal' (zip)](CppQtShowModal.zip)

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 [GUI](CppGui.htm) Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

### main.cpp

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "dialogmain.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   DialogMain w;   w.show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialogpopup.h

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOGPOPUP_H #define DIALOGPOPUP_H  #include <QDialog>  namespace Ui {     class DialogPopUp; }  class DialogPopUp : public QDialog {     Q_OBJECT  public:     explicit DialogPopUp(QWidget *parent = 0);     ~DialogPopUp();  protected:     void changeEvent(QEvent *e);  private:     Ui::DialogPopUp *ui; };  #endif // DIALOGPOPUP_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialogpopup.cpp

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialogpopup.h" #include "ui_dialogpopup.h"  DialogPopUp::DialogPopUp(QWidget *parent) :     QDialog(parent),     ui(new Ui::DialogPopUp) {     ui->setupUi(this); }  DialogPopUp::~DialogPopUp() {     delete ui; }  void DialogPopUp::changeEvent(QEvent *e) {     QDialog::changeEvent(e);     switch (e->type()) {     case QEvent::LanguageChange:         ui->retranslateUi(this);         break;     default:         break;     } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialogmain.h

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOGMAIN_H #define DIALOGMAIN_H  #include <QDialog>  namespace Ui {     class DialogMain; }  class DialogMain : public QDialog {     Q_OBJECT  public:     explicit DialogMain(QWidget *parent = 0);     ~DialogMain();  protected:     void changeEvent(QEvent *e);  private:     Ui::DialogMain *ui; private slots:     void onClickShow(); };  #endif // DIALOGMAIN_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialogmain.cpp

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/shared_ptr.hpp> #include "dialogpopup.h" #include "dialogmain.h" #include "ui_dialogmain.h"  DialogMain::DialogMain(QWidget *parent) :     QDialog(parent),     ui(new Ui::DialogMain) {   ui->setupUi(this);   QObject::connect(ui->button_show,SIGNAL(clicked()),this,SLOT(onClickShow())); }  DialogMain::~DialogMain() {   delete ui; }  void DialogMain::changeEvent(QEvent *e) {   QDialog::changeEvent(e);   switch (e->type()) {   case QEvent::LanguageChange:     ui->retranslateUi(this);     break;   default:     break;   } }  void DialogMain::onClickShow() {   boost::shared_ptr<DialogPopUp> f(new DialogPopUp);   this->hide(); //Hide the main window   f->exec();    //Show the pop-up modally   this->show(); //Show the main window again }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
