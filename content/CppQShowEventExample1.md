



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QShowEvent example 1: visibility](CppQShowEventExample1.md)
===============================================================================================

 

[QShowEvent example 1: visibility](CppQShowEventExample1.md) is a
[QShowEvent](CppQShowEvent.md) example that verifies that a
[widget](CppQWidget.md) is invisible in a [dialog](CppQDialog.md) its
[constructor](CppConstructor.md), but is visible in the showEvent
[member function](CppMemberFunction.md).

 

-   ![Lubuntu](PicLubuntu.png)![Desktop](PicDesktop.png) [View a
    screenshot of
    'CppQShowEventExample1' (png)](CppQShowEventExample1.png)
-   ![Qt Creator](PicQtCreator.png) [Download the
    'CppQShowEventExample1' source
    code (zip)](CppQShowEventExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQShowEventExample1.pro
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

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
