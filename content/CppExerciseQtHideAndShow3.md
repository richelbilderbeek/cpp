
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [Exercise: Qt hide and show \#3](CppExerciseQtHideAndShow3.md)
=================================================================================================

 

Difficulty: 1/10

Date added: 19th of October 2012

 

In this [exercise](CppExercise.md) I will elaborate on [the answer of
exercise 'Qt hide and show \#2'](CppExerciseQtHideAndShow2Answer.md).

 

The following program flow works:

-   On startup, the first dialog shows:\
    ![First screen](CppExerciseQtHideAndShow2_1.png)
-   On the first dialog, pressing the button with the text 'Show
    second', results in **hiding the first** and showing the second
    dialog:\
    ![Second screen](CppExerciseQtHideAndShow2_2.png)
-   On the second dialog, pressing the button with the text 'Back to
    first', results in going back to the first dialog\
-   On the second dialog, pressing the button with the text 'Go to
    third', results in **hiding the second** and showing the third
    dialog:\
    ![Third screen](CppExerciseQtHideAndShow2_3.png)
-   On the third dialog, pressing the button with the text 'Back to
    first', results in going back to the first dialog.
-   On the third dialog, pressing the button with the text 'Back to
    second', results in going back to the second dialog.

 

The solution given at [the answer of exercise 'Qt hide and show
\#2'](CppExerciseQtHideAndShow2Answer.md) works, but there is still the
need to add the needed [signals](CppQtSignal.md) and
[slots](CppSlot.md) to every child and parent window.

 

 

 

 

 

Question
--------

 

Refactor the code, by adding a new class called QtHideAndShowDialog.

 

-   [Download the Qt Creator project
    'CppExerciseQtHideAndShow3' (zip)](CppExerciseQtHideAndShow3.zip)
-   [View the answer](CppExerciseQtHideAndShow3Answer.md)

 

 

 

 

 

Code
----

 

[Qt project file](CppQtProjectFile.md): CppExerciseQtHideAndShow3.pro
----------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui TARGET = CppExerciseQtHideAndShow3 TEMPLATE = app SOURCES += \     main.cpp\     firstdialog.cpp \     seconddialog.cpp \     thirddialog.cpp HEADERS  +=  \     firstdialog.h \     seconddialog.h \     thirddialog.h FORMS    += \     firstdialog.ui \     seconddialog.ui \     thirddialog.ui `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

firstdialog.h
-------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef FIRSTDIALOG_H #define FIRSTDIALOG_H  #include <QDialog>  namespace Ui { class FirstDialog; }  class FirstDialog : public QDialog {     Q_OBJECT      public:     explicit FirstDialog(QWidget *parent = 0);     ~FirstDialog();      private slots:     void close_child();     void on_pushButton_clicked();  private:     Ui::FirstDialog *ui;     bool m_show_child; };  #endif // FIRSTDIALOG_H `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

firstdialog.cpp
---------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "seconddialog.h" #include "firstdialog.h" #include "ui_firstdialog.h"  FirstDialog::FirstDialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::FirstDialog),     m_show_child(false) {   ui->setupUi(this); }  FirstDialog::~FirstDialog() {   delete ui; }  void FirstDialog::close_child() {   m_show_child = false; }  void FirstDialog::on_pushButton_clicked() {   SecondDialog d;   this->hide();   QObject::connect(&d,SIGNAL(close_me()),this,SLOT(close_child()));   m_show_child = true;   while (m_show_child)   {     d.exec();   }   this->show(); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "firstdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   FirstDialog w;   w.show();   a.exec(); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

seconddialog.h
--------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef SECONDDIALOG_H #define SECONDDIALOG_H  #include <QDialog>  namespace Ui { class SecondDialog; }  class SecondDialog : public QDialog {     Q_OBJECT      public:     explicit SecondDialog(QWidget *parent = 0);     ~SecondDialog();      private slots:     void close_child();      void on_button_goto_third_clicked();      void on_button_back_to_first_clicked();  protected:     void closeEvent(QCloseEvent *);  signals:     void close_me();  private:     Ui::SecondDialog *ui;     bool m_show_child; };  #endif // SECONDDIALOG_H `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

seconddialog.cpp
----------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include "seconddialog.h" #include "ui_seconddialog.h" #include "thirddialog.h"  SecondDialog::SecondDialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::SecondDialog),     m_show_child(false) {   ui->setupUi(this); }  SecondDialog::~SecondDialog() {   delete ui; }  void SecondDialog::close_child() {   m_show_child = false; }  void SecondDialog::closeEvent(QCloseEvent *) {   emit close_me(); }  void SecondDialog::on_button_back_to_first_clicked() {   close(); }  void SecondDialog::on_button_goto_third_clicked() {   ThirdDialog d;   this->hide();   QObject::connect(&d,SIGNAL(close_me()),this,SLOT(close_child()));   m_show_child = true;   while (m_show_child)   {     d.exec();   }   if (d.m_back_to_which_dialog == 1)   {     this->close();   }   else   {     this->show();   } } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

thirddialog.h
-------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef THIRDDIALOG_H #define THIRDDIALOG_H  #include <QDialog>  namespace Ui { class ThirdDialog; }  class ThirdDialog : public QDialog {     Q_OBJECT       public:     explicit ThirdDialog(QWidget *parent = 0);     ~ThirdDialog();      int m_back_to_which_dialog;  protected:     void closeEvent(QCloseEvent *);  private slots:     void on_button_back_to_first_clicked();      void on_button_back_to_second_clicked();  signals:   void close_me();  private:     Ui::ThirdDialog *ui; };  #endif // THIRDDIALOG_H `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

thirddialog.cpp
---------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "thirddialog.h" #include "ui_thirddialog.h"  ThirdDialog::ThirdDialog(QWidget *parent) :     QDialog(parent),     m_back_to_which_dialog(2), //When user closes the dialog, go back to the previous/second dialog     ui(new Ui::ThirdDialog) {   ui->setupUi(this); }  ThirdDialog::~ThirdDialog() {   delete ui; }  void ThirdDialog::closeEvent(QCloseEvent *) {   emit close_me(); }  void ThirdDialog::on_button_back_to_first_clicked() {   m_back_to_which_dialog = 1;   close(); }  void ThirdDialog::on_button_back_to_second_clicked() {   m_back_to_which_dialog = 2;   close(); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

