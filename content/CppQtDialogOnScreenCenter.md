



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [How to put a dialog on the screen's center?](CppQtDialogOnScreenCenter.md)
==============================================================================================================

 

[QT FAQ](CppQtFaq.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QDesktopWidget>  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {   ui->setupUi(this);   //Put the dialog in the screen center   const QRect screen = QApplication::desktop()->screenGeometry();   this->move( screen.center() - this->rect().center() ); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Complete source code
--------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com)

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 [GUI](CppGui.md) Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)

 

-   [Download the Qt Creator project
    'CppQtDialogOnScreenCenter' (zip)](CppQtDialogOnScreenCenter.zip)

 

 

 

 

 

### main.cpp

 

Not a single line is changed from the default created
[main](CppMain.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialog.h

 

Not a single line is changed from the default created dialog.h.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {     class Dialog; }  class Dialog : public QDialog {     Q_OBJECT  public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();  protected:     void changeEvent(QEvent *e);  private:     Ui::Dialog *ui; };  #endif // DIALOG_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialog.cpp

 

The only file where changed are added.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QDesktopWidget>  #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {   ui->setupUi(this);   //Move the dialog away from the center   this->setGeometry(0,0,this->width(),this->height());   //Put the dialog in the screen center   const QRect screen = QApplication::desktop()->screenGeometry();   this->move( screen.center() - this->rect().center() ); }  Dialog::~Dialog() {   delete ui; }  void Dialog::changeEvent(QEvent *e) {   QDialog::changeEvent(e);   switch (e->type()) {   case QEvent::LanguageChange:     ui->retranslateUi(this);     break;   default:     break;   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



