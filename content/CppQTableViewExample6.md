



 

 

 

 

 

([C++](Cpp.htm)) [QTableViewExample6](CppQTableViewExample6.htm)
================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QTableView example 6: two views on one
model](CppQTableViewExample6.htm) is a [QTableView](CppQTableView.htm)
[example](CppExample.htm).

 

This was to demonstrate that if two tables must remain identical, the
model/view architecture is an easy way to do so: because the two views
work on the same model, they cannot be different.

 

-   [View a screenshot of
    'QTableViewExample6' (png)](CppQTableViewExample6.png)
-   [Download the Qt Creator project
    'QTableViewExample6' (zip)](CppQTableViewExample6.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQTableViewExample6/CppQTableViewExample6.pro
------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets QMAKE_CXXFLAGS += -Wall -Wextra -Werror TEMPLATE = app QMAKE_CXXFLAGS += -std=c++11 SOURCES += \     qtdialog.cpp \     qtmain.cpp  HEADERS  += qtdialog.h  FORMS    += qtdialog.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTableViewExample6/qtdialog.h
----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  namespace Ui {   class QtDialog; }  struct MyModel;  class QtDialog : public QDialog {   Q_OBJECT    public:   explicit QtDialog(QWidget *parent = 0);   ~QtDialog();    private slots:  private:   Ui::QtDialog *ui;    ///The downcasted model   MyModel* m_model; };  #endif // QTDIALOG_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTableViewExample6/qtdialog.cpp
------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h"  #include <cassert> #include <iostream> #include <stdexcept>  #include <boost/lexical_cast.hpp> #include <boost/numeric/conversion/cast.hpp>  #include <QHeaderView> #include <QStandardItemModel> #include "ui_qtdialog.h"  struct MyModel : public QStandardItemModel {   MyModel(QObject *parent = 0)     : QStandardItemModel(parent)   {     const int n_rows = 3;     const int n_cols = 4;     this->setColumnCount(n_cols);     this->setRowCount(n_rows);     for (int row = 0; row!=n_rows; ++row)     {       for (int col = 0; col!=n_cols; ++col)       {         QStandardItem * const item = new QStandardItem;         const std::string s           =             std::string("(")           + boost::lexical_cast<std::string>(row)           + std::string(",")           + boost::lexical_cast<std::string>(row)           + std::string(")");         item->setText(s.c_str());         this->setItem(row,col,item);        }     }   } };  QtDialog::QtDialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::QtDialog),   m_model(new MyModel(this)) {   ui->setupUi(this);    ui->table_left->setModel(m_model);   ui->table_right->setModel(m_model);   assert(ui->table_left->model());   assert(ui->table_right->model());   assert(m_model);   assert(ui->table_left->model() == m_model);   assert(ui->table_right->model() == m_model); }  QtDialog::~QtDialog() {   delete ui; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTableViewExample6/qtmain.cpp
----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();   return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
