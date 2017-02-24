



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QAction: Example 1](CppQActionExample1.htm)
==============================================================================

 

[QAction: Example 1](CppQActionExample1.htm) is a
[QAction](CppQAction.htm) example that DOES NOT WORK. I don't know why
yet...

 

 

 

 

 

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQActionExample1.pro
---------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp \         qtmainwindow.cpp  HEADERS  += qtmainwindow.h FORMS    += qtmainwindow.ui`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtmainwindow.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtMainWindow w;   w.show();     return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtmainwindow.h
--------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTMAINWINDOW_H #define QTMAINWINDOW_H  #include <QMainWindow>  namespace Ui {   class QtMainWindow; }  class QtMainWindow : public QMainWindow {   Q_OBJECT    public:   explicit QtMainWindow(QWidget *parent = 0);   ~QtMainWindow();    private:   Ui::QtMainWindow *ui;  private slots:   void OnNew(); };  #endif // QTMAINWINDOW_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtmainwindow.cpp
----------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtmainwindow.h" #include "ui_qtmainwindow.h"  QtMainWindow::QtMainWindow(QWidget *parent) :   QMainWindow(parent),   ui(new Ui::QtMainWindow) {   ui->setupUi(this);   {     //DOES NOT WORK???     QAction * const a = new QAction(this);     a->setShortcut(Qt::CTRL + Qt::Key_N);     QObject::connect(a,SIGNAL(triggered()),this,SLOT(OnNew()));     this->menuBar()->addAction("New",a,SLOT(trigger()));   }   {     //DOES NOT WORK???     QAction * const a = new QAction(this);     a->setShortcut(QKeySequence(Qt::CTRL + Qt::Key_Q));     QObject::connect(a,SIGNAL(triggered()),this,SLOT(close()));     this->menuBar()->addAction("Quit",a,SLOT(trigger()));   } }  QtMainWindow::~QtMainWindow() {   delete ui; }  void QtMainWindow::OnNew() {   ui->label_random->setText(QString::number(std::rand())); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
