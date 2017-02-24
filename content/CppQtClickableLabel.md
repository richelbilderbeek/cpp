
 

 

 

 

 

([C++](Cpp.md) [Qt](CppQt.md)) [How to make a clickable QLabel?](CppQtClickableLabel.md)
===========================================================================================

 

[How to make a clickable QLabel?](CppQtClickableLabel.md) is a [QT
FAQ](CppQtFaq.md) with multiple answers:

-   A\) You cannot
-   B\) You can, if you use QLabel to display text, if you replace the QLabel
    by a (disguised) QPushButton
-   C\) You can, if you use QLabel to display an image, see [Qt example 17:
    clickable QLabels showing an image](CppQtExample17.md)

 

 

 

 

Answer B source code
--------------------

 

You can disguise a QPushButton to look like a QLabel, by settings its
Flat property to true. This looks [like this
(png)](CppQtClickableLabel.png).

 

-   [Download the Qt Creator project
    'CppQtClickableLabel' (zip)](CppQtClickableLabel.zip)

 

Operating system: [Ubuntu](http://www.ubuntu.com)

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 [GUI](CppGui.md) Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();    protected:   void changeEvent(QEvent *e);    private:   Ui::Dialog *ui; private slots:   void onClick();    };  #endif // DIALOG_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib>  #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {   ui->setupUi(this);   this->setWindowTitle("CppQtClickableLabel");   //A QLabel does not emit a clicked signal   QObject::connect(ui->label_text,SIGNAL(clicked()),this,SLOT(onClick()));   //But a QPushButton does!   QObject::connect(ui->button,SIGNAL(clicked()),this,SLOT(onClick())); }  Dialog::~Dialog() {   delete ui; }  void Dialog::changeEvent(QEvent *e) {   QDialog::changeEvent(e);   switch (e->type()) {   case QEvent::LanguageChange:     ui->retranslateUi(this);     break;   default:     break;   } }  void Dialog::onClick() {   QString s; s.setNum(std::rand());   this->setWindowTitle(s); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

