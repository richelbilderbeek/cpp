



 

 

 

 

 

([C++](Cpp.htm)) [QListWidgetExample1](CppQListWidgetExample1.htm)
==================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[QListWidget example 1](CppQListWidgetExample1.htm) is a
[QListWidget](CppQListWidgetExample.htm) [example](CppExample.htm).

 

-   [View a screenshot of
    'CppQListWidgetExample1' (png)](CppQListWidgetExample1.png)
-   [Download the Qt Creator project
    'CppQListWidgetExample1' (zip)](CppQListWidgetExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQListWidgetExample1/CppQListWidgetExample1.pro
--------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TEMPLATE = app  SOURCES += \   main.cpp \   dialog.cpp  HEADERS  += dialog.h  FORMS    += dialog.ui`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQListWidgetExample1/dialog.h
---------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();  private slots:   void on_pushButton_clicked();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQListWidgetExample1/dialog.cpp
-----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this);   ui->listWidget->setAlternatingRowColors(true); }  Dialog::~Dialog() {   delete ui; }  void Dialog::on_pushButton_clicked() {   QListWidgetItem * const item = new QListWidgetItem;   item->setText(ui->lineEdit->text());   ui->listWidget->addItem(item);   ui->lineEdit->clear(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQListWidgetExample1/main.cpp
---------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();    return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
