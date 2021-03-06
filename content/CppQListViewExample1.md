
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QListViewExample1](CppQListViewExample1.md)
===============================================================================

 

[QListViewExample1](CppQListViewExample1.md) is an example to use a
[QListView](CppQListView.md).

 

-   [View a screenshot of
    'CppQListViewExample1' (png)](CppQListViewExample1.png)
-   [Download the Qt Creator project
    'CppQListViewExample1' (zip)](CppQListViewExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQListViewExample1.pro
-----------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TARGET = CppQListViewExample1 TEMPLATE = app   SOURCES +=\         qtdialog.cpp \     qtmain.cpp  HEADERS  += qtdialog.h  FORMS    += qtdialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtdialog.h
----------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  namespace Ui {   class QtDialog; }  struct QStandardItemModel;  class QtDialog : public QDialog {   Q_OBJECT    public:   explicit QtDialog(QWidget *parent = 0);   ~QtDialog();    private slots:   void on_button_clicked();  private:   Ui::QtDialog *ui;   QStandardItemModel * const m_model; };  #endif // QTDIALOG_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtdialog.cpp
------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h"  #include <QStandardItemModel> #include <QStyledItemDelegate> #include "ui_qtdialog.h"  QtDialog::QtDialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::QtDialog),   m_model(new QStandardItemModel) {   ui->setupUi(this);   ui->list_view->setModel(m_model);   ui->list_view->setItemDelegate(new QStyledItemDelegate); }  QtDialog::~QtDialog() {   delete ui; }  void QtDialog::on_button_clicked() {   QStandardItem * const item = new QStandardItem;   item->setText("");   m_model->appendRow(item);   ui->list_view->scrollToBottom();   ui->list_view->setCurrentIndex(item->index());   ui->list_view->edit(item->index());  }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtmain.cpp
----------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();   return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

