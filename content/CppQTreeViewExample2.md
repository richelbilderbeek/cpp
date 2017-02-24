

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QTreeViewExample2](CppQTreeViewExample2.htm)
==============================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QTreeView example 2: add a row and undo/redo
this](CppQTreeViewExample2.htm) is an example to use a
[QTreeView](CppQTreeView.htm).

 

-   [View a screenshot of
    'CppQTreeViewExample2' (png)](CppQTreeViewExample2.png)
-   [Download the Qt Creator project
    'CppQTreeViewExample2' (zip)](CppQTreeViewExample2.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQTreeViewExample2/CppQTreeViewExample2.pro
----------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app  SOURCES += \     qtdialog.cpp \     qtmain.cpp \     qtaddrowcommand.cpp  HEADERS  += qtdialog.h \     qtaddrowcommand.h  FORMS    += qtdialog.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample2/qtaddrowcommand.h
----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTADDROWCOMMAND_H #define QTADDROWCOMMAND_H  #include <QUndoCommand>  struct QStandardItemModel; struct QAbstractItemView;  struct QtAddRowCommand : public QUndoCommand {   QtAddRowCommand(     QStandardItemModel * const model,     QAbstractItemView * const view);   void redo();   void undo();    private:   std::string m_text;   QStandardItemModel * const m_model;   QAbstractItemView  * const m_view; };  #endif // QTADDROWCOMMAND_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample2/qtaddrowcommand.cpp
------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtaddrowcommand.h"  #include <QAbstractItemModel> #include <QAbstractItemView> #include <QStandardItem> #include <QStandardItemModel>  QtAddRowCommand::QtAddRowCommand(   QStandardItemModel * const model,   QAbstractItemView * const view)   : m_model(model), m_view(view) {  }  void QtAddRowCommand::redo() {   QStandardItem * const item = new QStandardItem;   item->setText(m_text.c_str());   m_model->appendRow(item);   m_view->setCurrentIndex(item->index()); }  void QtAddRowCommand::undo() {   const int n_rows = m_model->rowCount();   QStandardItem * const item = m_model->item(n_rows - 1);   if (item) m_text = item->text().toStdString();   m_model->removeRow(n_rows - 1); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample2/qtdialog.h
---------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  namespace Ui {   class QtDialog; }  struct QStandardItemModel; struct QUndoStack;  class QtDialog : public QDialog {   Q_OBJECT    public:   explicit QtDialog(QWidget *parent = 0);   ~QtDialog();  protected:   void keyPressEvent(QKeyEvent *);    private slots:   void on_button_clicked();  private:   Ui::QtDialog *ui;   QStandardItemModel * const m_model;   QUndoStack * const m_undo_stack; };  #endif // QTDIALOG_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample2/qtdialog.cpp
-----------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h"  #include <QKeyEvent>  #include <QStandardItemModel> #include <QStyledItemDelegate> #include <QUndoStack>  #include "qtaddrowcommand.h" #include "ui_qtdialog.h"  QtDialog::QtDialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::QtDialog),   m_model(new QStandardItemModel),   m_undo_stack(new QUndoStack) {   ui->setupUi(this);   ui->tree->setModel(m_model);   ui->tree->setItemDelegate(new QStyledItemDelegate); }  QtDialog::~QtDialog() {   delete ui;   delete m_undo_stack; }  void QtDialog::keyPressEvent(QKeyEvent * e) {   if ( (e->modifiers() & Qt::ControlModifier)     && !(e->modifiers() & Qt::ShiftModifier)     && e->key() == Qt::Key_Z)   {     m_undo_stack->undo();   }   if ( (e->modifiers() & Qt::ControlModifier)     && (e->modifiers() & Qt::ShiftModifier)     && e->key() == Qt::Key_Z)   {     m_undo_stack->redo();   } }  void QtDialog::on_button_clicked() {   QtAddRowCommand * const cmd = new QtAddRowCommand(m_model,ui->tree);   m_undo_stack->push(cmd);    ui->tree->scrollToBottom();    const int n_rows = m_model->rowCount();   QStandardItem * const item = m_model->item(n_rows - 1);   ui->tree->edit(item->index());  }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample2/qtmain.cpp
---------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();      return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
