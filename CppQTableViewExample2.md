[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QTableViewExample2](CppQTableViewExample2.htm)
================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QTableView example 2: table with ten columns of
checkboxes](CppQTableViewExample2.htm) is a
[QTableView](CppQTableView.htm) [example](CppExample.htm).

 

-   [View a screenshot of
    'QTableViewExample2' (png)](CppQTableViewExample2.png)
-   [Download the Qt Creator project
    'QTableViewExample2' (zip)](CppQTableViewExample2.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQTableViewExample2/CppQTableViewExample2.pro
------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app QMAKE_CXXFLAGS += -std=c++11 SOURCES += \     qtdialog.cpp \     qtmain.cpp  HEADERS  += qtdialog.h  FORMS    += qtdialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTableViewExample2/qtdialog.h
----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  namespace Ui {   class QtDialog; }  struct QStandardItemModel;  class QtDialog : public QDialog {   Q_OBJECT    public:   explicit QtDialog(QWidget *parent = 0);   ~QtDialog();    private slots:   void on_button_clicked();  private:   Ui::QtDialog *ui; };  #endif // QTDIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTableViewExample2/qtdialog.cpp
------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h"  #include <cassert>  #include <QStandardItemModel> #include "ui_qtdialog.h"  QtDialog::QtDialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::QtDialog) {   ui->setupUi(this);    assert(!ui->table->model());   ui->table->setModel(new QStandardItemModel(this));   assert( ui->table->model());    assert(dynamic_cast<QStandardItemModel*>(ui->table->model()));   dynamic_cast<QStandardItemModel*>(ui->table->model())->setColumnCount(8);    for (int i=0; i!=10; ++i) on_button_clicked(); }  QtDialog::~QtDialog() {   delete ui; }  void QtDialog::on_button_clicked() {   const int n_cols = ui->table->model()->columnCount();   QList<QStandardItem*> items;   for (int i=0; i!=n_cols; ++i)   {     QStandardItem * const item = new QStandardItem;     item->setCheckable(true);     item->setEditable(false);     item->setCheckState(Qt::Checked);     items.push_back(item);      ui->table->setColumnWidth(i,24);    }   assert(dynamic_cast<QStandardItemModel*>(ui->table->model()));   dynamic_cast<QStandardItemModel*>(ui->table->model())->appendRow(items);    ui->table->scrollToBottom();   ui->table->setCurrentIndex(items[0]->index());   ui->table->setRowHeight(items[0]->index().row(),24); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTableViewExample2/qtmain.cpp
----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();   return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
