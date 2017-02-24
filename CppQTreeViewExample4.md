[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QTreeViewExample4](CppQTreeViewExample4.htm)
==============================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QTreeView example 4: directory view](CppQTreeViewExample4.htm) is an
example to use a [QTreeView](CppQTreeView.htm).

 

-   [View a screenshot of
    'CppQTreeViewExample4' (png)](CppQTreeViewExample4.png)
-   [Download the Qt Creator project
    'CppQTreeViewExample4' (zip)](CppQTreeViewExample4.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQTreeViewExample4/CppQTreeViewExample4.pro
----------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TEMPLATE = app  SOURCES += \     qtdialog.cpp \     qtmain.cpp  HEADERS  += \     qtdialog.h  FORMS    += qtdialog.ui`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample4/qtdialog.h
---------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  namespace Ui {   class QtDialog; }  struct QDirModel; struct QtMyTreeView;  class QtDialog : public QDialog {   Q_OBJECT    public:   explicit QtDialog(QWidget *parent = 0);   ~QtDialog();  protected:   void keyPressEvent(QKeyEvent *);    private slots:  private:   Ui::QtDialog *ui; };  #endif // QTDIALOG_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample4/qtdialog.cpp
-----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h"  #include <cassert>  #include <boost/lexical_cast.hpp>  #include <QKeyEvent> #include <QStandardItemModel> #include <QDirModel>   #include "ui_qtdialog.h"  QtDialog::QtDialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::QtDialog) {   ui->setupUi(this);    QDirModel * const model = new QDirModel;   model->setSorting(QDir::DirsFirst | QDir::IgnoreCase | QDir::Name);    QTreeView * const view = ui->treeView;   view->setModel(model);   view->header()->setSortIndicator(0, Qt::AscendingOrder);   view->header()->setSortIndicatorShown(true);   //view->header()->setClickable(true);    const QModelIndex index = model->index(QDir::currentPath());   view->expand(index);   view->scrollTo(index);   view->setCurrentIndex(index);   view->resizeColumnToContents(0);  }  QtDialog::~QtDialog() {   delete ui; }  void QtDialog::keyPressEvent(QKeyEvent * e) {   if (e->key() == Qt::Key_Escape) { close(); return; } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQTreeViewExample4/qtmain.cpp
---------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();     return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
