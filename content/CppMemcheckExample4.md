
 

 

 

 

 

([C++](Cpp.md)) [MemcheckExample4](CppMemcheckExample4.md)
============================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[memcheck example 4: Hello Qt](CppMemcheckExample4.md) is a
[memcheck](CppMemcheck.md) example that tests a ['Hello Qt' program
using Qt Creator under Ubuntu](CppHelloQtQtCreatorUbuntu.md) for
possible problems.

 

-   [Download the Qt Creator project
    'CppMemcheckExample4' (zip)](CppMemcheckExample4.zip)
-   [View the valgrind output of
    'CppMemcheckExample4' (txt)](CppMemcheckExample4.txt)

 

 

 

 

 

[valgrind\_memcheck.txt](CppMemcheckExample4.txt)
-------------------------------------------------

 

[valgrind](CppValgrind.md) finds a lot of problems! Because the output
is too big to display here, you can [view valgrind\_memcheck.txt
here](CppMemcheckExample4.txt).

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMemcheckExample4/CppMemcheckExample4.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri) #Or use the code below # # QT       += core gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # # win32 { #   greaterThan(QT_MAJOR_VERSION, 4): QT += svg # } # # TEMPLATE = app # # CONFIG(debug, debug|release) { #   message(Debug mode) # } # # CONFIG(release, debug|release) { #   message(Release mode) #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # # unix { #   QMAKE_CXXFLAGS += -Werror # }   SOURCES += main.cpp \            dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample4/dialog.h
------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #include <QDialog> #pragma GCC diagnostic pop  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   Dialog(const Dialog&) = delete;   Dialog& operator=(const Dialog&) = delete;   ~Dialog();  private:   Ui::Dialog *ui;  private slots:     void on_pushButton_clicked(); };  #endif // DIALOG_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample4/dialog.cpp
--------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #include "dialog.h" #include "ui_dialog.h" #pragma GCC diagnostic pop  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {   ui->setupUi(this); }  Dialog::~Dialog() {   delete ui; }  void Dialog::on_pushButton_clicked() {   ui->pushButton->setText("Hello World"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample4/main.cpp
------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #include <QApplication> #include "dialog.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();   return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample4/valgrind\_memcheck.sh
-------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh valgrind --leak-check=full -v --show-reachable=yes --log-file=valgrind_memcheck.txt ../CppValgrindExample4-build-desktop/./CppValgrindExample4`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

