[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QShowEvent example 1: visibility](CppQShowEventExample1.htm)
===============================================================================================

 

[QShowEvent example 1: visibility](CppQShowEventExample1.htm) is a
[QShowEvent](CppQShowEvent.htm) example that verifies that a
[widget](CppQWidget.htm) is invisible in a [dialog](CppQDialog.htm) its
[constructor](CppConstructor.htm), but is visible in the showEvent
[member function](CppMemberFunction.htm).

 

-   ![Lubuntu](PicLubuntu.png)![Desktop](PicDesktop.png) [View a
    screenshot of
    'CppQShowEventExample1' (png)](CppQShowEventExample1.png)
-   ![Qt Creator](PicQtCreator.png) [Download the
    'CppQShowEventExample1' source
    code (zip)](CppQShowEventExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQShowEventExample1.pro
------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2013-05-04T15:13:50 # #-------------------------------------------------  QT       += core gui  greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TARGET = CppQShowEventExample1 TEMPLATE = app   SOURCES += main.cpp\         dialog.cpp  HEADERS  += dialog.h  FORMS    += dialog.ui`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog> #include <QLabel>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();  protected:   void showEvent(QShowEvent *);    private:   Ui::Dialog *ui;   QLabel * const m_label; };  #endif // DIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <cassert> #include <QDebug> #include <QLabel> #include <QShowEvent> #include <QVBoxLayout>  #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog),   m_label(new QLabel("My label"))  {   ui->setupUi(this);    assert(!this->layout() && "No layout is present yet");   this->setLayout(new QVBoxLayout);   assert(this->layout() && "Vertical layout is present");    this->layout()->addWidget(m_label);   assert(!m_label->isVisible() && "Label is not visible yet");   qDebug() << "End of constructor"; }  Dialog::~Dialog() {   delete ui; }  void Dialog::showEvent(QShowEvent *) {   assert(m_label->isVisible() && "Label has been made visible now");   qDebug() << "End of showEvent"; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();      return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
