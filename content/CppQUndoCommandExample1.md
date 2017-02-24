

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QUndoCommand example 1](CppQUndoCommandExample1.htm)
=======================================================================================

 

[QUndoCommand example 1](CppQUndoCommandExample1.htm) is a
[QUndoCommand](CppQUndoCommand.htm) example.

 

-   [View a screenshot of
    'CppQUndoCommandExample1' (png)](CppQUndoCommandExample1.png)
-   [Download the Qt Creator project
    'CppQUndoCommandExample1' (zip)](CppQUndoCommandExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQUndoCommandExample1.pro
--------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2013-04-21T19:59:08 # #-------------------------------------------------  QT       += core gui  greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TARGET = CppQUndoCommandExample1 TEMPLATE = app   SOURCES += main.cpp\         qtdialog.cpp \     qtbuttonincrementcommand.cpp  HEADERS  += qtdialog.h \     qtbuttonincrementcommand.h  FORMS    += qtdialog.ui`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();      return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtbuttonincrementcommand.h
--------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTBUTTONINCREMENTCOMMAND_H #define QTBUTTONINCREMENTCOMMAND_H  #include <QUndoCommand>  struct QPushButton;  struct QtButtonIncrementCommand : public QUndoCommand {   explicit QtButtonIncrementCommand(QPushButton * const button);    ///Virtual function supplied by QUndoCommand   void redo();    ///Virtual function supplied by QUndoCommand   void undo();    private:   QPushButton * const m_button;  };  #endif // QTBUTTONINCREMENTCOMMAND_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtbuttonincrementcommand.cpp
----------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtbuttonincrementcommand.h"  #include <cassert> #include <QPushButton>  QtButtonIncrementCommand::QtButtonIncrementCommand(   QPushButton * const button)   : m_button(button) {   assert(m_button); }  void QtButtonIncrementCommand::redo() {   const int current_number = m_button->text().toInt();   const int new_number = current_number + 1;   m_button->setText(QString::number(new_number) ); }  void QtButtonIncrementCommand::undo() {   const int current_number = m_button->text().toInt();   const int new_number = current_number - 1;   m_button->setText(QString::number(new_number) ); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtdialog.h
----------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  namespace Ui {   class QtDialog; }  struct QUndoStack;  class QtDialog : public QDialog {   Q_OBJECT    public:   explicit QtDialog(QWidget *parent = 0);   ~QtDialog();      private slots:   void keyPressEvent(QKeyEvent *);   void on_button_clicked();  private:   Ui::QtDialog *ui;    QUndoStack * const m_stack; };  #endif // QTDIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtdialog.cpp
------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h"  #include <QKeyEvent> #include <QUndoStack> #include "qtbuttonincrementcommand.h"  #include "ui_qtdialog.h"  QtDialog::QtDialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::QtDialog),   m_stack(new QUndoStack(this)) {   ui->setupUi(this); }  QtDialog::~QtDialog() {   delete ui; }  void QtDialog::keyPressEvent(QKeyEvent * e) {   if ( (e->modifiers() & Qt::ControlModifier)     && !(e->modifiers() & Qt::ShiftModifier)     && e->key() == Qt::Key_Z)   {     m_stack->undo();   }   if ( (e->modifiers() & Qt::ControlModifier)     && (e->modifiers() & Qt::ShiftModifier)     && e->key() == Qt::Key_Z)   {     m_stack->redo();   } }  void QtDialog::on_button_clicked() {   QtButtonIncrementCommand * const cmd     = new QtButtonIncrementCommand(ui->button);    //By pushing the command, redo is called   m_stack->push(cmd); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
