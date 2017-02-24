



 

 

 

 

 

([C++](Cpp.htm)) [MenuOfExecutables](CppMenuOfExecutables.htm)
==============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppMenuOfExecutables/CppMenuOfExecutables.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui  greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TEMPLATE = app  QMAKE_CXXFLAGS += -std=c++1y  SOURCES += main.cpp\         dialog.cpp  HEADERS  += dialog.h  FORMS    += dialog.ui`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMenuOfExecutables/dialog.h
-------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();  private slots:    void on_button1_clicked();    void on_button2_clicked();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMenuOfExecutables/dialog.cpp
---------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <cassert> #include <fstream> #include <string>  #include "ui_dialog.h"   ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFileStl(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this);    {     const std::string executable{"/home/richel/bin/GameBeerWanterDesktop"};     assert(IsRegularFileStl(executable));   }   {     const std::string executable{"/home/richel/bin/GameMaziakDesktop"};     assert(IsRegularFileStl(executable));   } }  Dialog::~Dialog() {   delete ui; }   void Dialog::on_button1_clicked() {   const std::string executable{"/home/richel/bin/GameBeerWanterDesktop"};   assert(IsRegularFileStl(executable));   std::system(executable.c_str()); }  void Dialog::on_button2_clicked() {   const std::string executable{"/home/richel/bin/GameMaziakDesktop"};   assert(IsRegularFileStl(executable));   std::system(executable.c_str()); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMenuOfExecutables/main.cpp
-------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();    return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
