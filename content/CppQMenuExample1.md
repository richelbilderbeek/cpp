



 

 

 

 

 

([C++](Cpp.htm)) [QMenuExample1](CppQMenuExample1.htm)
======================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQMenuExample1/CppQMenuExample1.pro
--------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  TEMPLATE = app  CONFIG(debug, debug|release) {   message(Debug mode) }  CONFIG(release, debug|release) {   message(Release mode)   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  SOURCES += \     main.cpp \     qmenuexample1widget.cpp  HEADERS += \     qmenuexample1widget.h`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQMenuExample1/main.cpp
---------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QApplication> #include "qmenuexample1widget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QMenuExample1Widget w;   w.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQMenuExample1/qmenuexample1widget.h
----------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QMENUEXAMPLE1WIDGET_H #define QMENUEXAMPLE1WIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QWidget> #pragma GCC diagnostic pop  class QMenuExample1Widget : public QWidget {   Q_OBJECT public:   explicit QMenuExample1Widget(QWidget *parent = 0);  signals:  public slots:  private slots:   void OnShowPopUpMenu(const QPoint& pos);   void OnClickPopUpMenu();  };  #endif // QMENUEXAMPLE1WIDGET_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQMenuExample1/qmenuexample1widget.cpp
------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "qmenuexample1widget.h"  #include <QMenu> #pragma GCC diagnostic pop   QMenuExample1Widget::QMenuExample1Widget(QWidget *parent)   : QWidget(parent) {   ///Too bad, does not work :-(   setContextMenuPolicy(Qt::CustomContextMenu);   QObject::connect(this,SIGNAL(customContextMenuRequested(QPoint)),this, SLOT(ShowPopUpMenu(const QPoint&))); }  void QMenuExample1Widget::OnClickPopUpMenu() {   this->setWindowTitle("Clicked"); }  void QMenuExample1Widget::OnShowPopUpMenu(const QPoint& pos) {   QMenu * const menu = new QMenu;   menu->addAction(tr("Test Item"), this, SLOT(OnClickPopUpMenu()));    menu->exec(this->mapToGlobal(pos)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
