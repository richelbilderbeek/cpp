



 

 

 

 

 

([C++](Cpp.htm)) [QFileDialogExample3](CppQFileDialogExample3.htm)
==================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QFileDialog example 3: compare class and convenience function from
GUI](CppQFileDialogExample3.htm) is a [QFileDialog](CppQFileDialog.htm)
[example](CppExample.htm).

 

-   [View a screenshot of
    'CppQFileDialogExample3' (png)](CppQFileDialogExample3.png)
-   [Download the Qt Creator project
    'CppQFileDialogExample3' (zip)](CppQFileDialogExample3.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQFileDialogExample3/CppQFileDialogExample3.pro
--------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets QMAKE_CXXFLAGS += -std=c++11 TEMPLATE = app SOURCES += \   main.cpp \   dialog.cpp  HEADERS  += dialog.h  FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQFileDialogExample3/dialog.h
---------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();    private slots:   void on_button_1_clicked();    void on_button_2_clicked();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQFileDialogExample3/dialog.cpp
-----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <cassert> #include <sstream> #include <QFileDialog>  #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this); }  Dialog::~Dialog() {   delete ui; }  void Dialog::on_button_1_clicked() {   QFileDialog d;    //enum ViewMode { Detail, List };   d.setViewMode(QFileDialog::Detail);    //enum FileMode { AnyFile, ExistingFile, Directory, ExistingFiles, DirectoryOnly };   d.setFileMode(QFileDialog::ExistingFiles);    //enum AcceptMode { AcceptOpen, AcceptSave };   d.setAcceptDrops(QFileDialog::AcceptOpen);    //enum Option { ShowDirsOnly, DontResolveSymlinks, DontConfirmOverwrite, DontUseSheet, DontUseNativeDialog, ReadOnly, HideNameFilterDetails }   d.setOptions(QFileDialog::ReadOnly);    d.exec();    std::stringstream s;   if (d.result() == QDialog::Accepted)   {     s << "Number of files selected: " << d.selectedFiles().size() << '\n';     const auto v = d.selectedFiles();     for (auto f: v) s << f.toStdString() << '\n';   }   else   {     assert(d.result() == QDialog::Rejected);     s << "Dialog closed with cancel or close\n";   }   ui->text_1->setPlainText(s.str().c_str()); }  void Dialog::on_button_2_clicked() {   const auto v = QFileDialog::getOpenFileNames();    std::stringstream s;   s << "Number of files selected: " << v.size() << '\n';   for (auto f: v) s << f.toStdString() << '\n';   ui->text_2->setPlainText(s.str().c_str()); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQFileDialogExample3/main.cpp
---------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();      return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
