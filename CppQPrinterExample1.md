[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QPrinterExample1](CppQPrinterExample1.htm)
============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQPrinterExample1/CppQPrinterExample1.pro
--------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui QMAKE_CXXFLAGS += -Wextra -Werror greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQPrinterExample1/dialog.h
------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();    private slots:   void on_button_clicked();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQPrinterExample1/dialog.cpp
--------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QPainter> #include <QPrinter> #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this); }  Dialog::~Dialog() {   delete ui; }  void Dialog::on_button_clicked() {   const QString filename = "CppQPrinterExample1.pdf";   //Set up a QPrinter   QPrinter printer;   printer.setOutputFormat(QPrinter::PdfFormat);   printer.setOrientation(QPrinter::Portrait);   printer.setPaperSize(QPrinter::A4);   printer.setFullPage(false);   printer.setOutputFileName(filename);    //Grab the window   const QImage image = QPixmap::grabWindow(this->winId()).toImage();    //Draw the image to painter to printer   QPainter painter;   painter.begin(&printer);   painter.drawImage(0,0,image);   painter.end();    //Assume the PDF is created   assert(QFile::exists(filename));}`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQPrinterExample1/main.cpp
------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();      return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
