
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QAction: Example 1](CppQActionExample1.md)
==============================================================================

 

[QAction: Example 1](CppQActionExample1.md) is a
[QAction](CppQAction.md) example that DOES NOT WORK. I don't know why
yet...

 

 

 

 

 

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQActionExample1.pro
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

 

 

 

 

 

 

