



 

 

 

 

 

([C++](Cpp.htm)) [QtExample24](CppQtExample24.htm)
==================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)

 

[Qt example 24: create a simple text positioning
widget](CppQtExample24.htm) is a [Qt Example](CppQtExample.htm) that
uses [QGraphicsView](CppQGraphicsView.htm) to create a simple text
positioning [widget](CppWidget.htm): in the
[constructor](CppConstructor.htm) the different
[std::strings](CppStdString.htm) are specified, upon which the
[widget](CppWidget.htm) puts these overlapping in the center. Then, the
[std::strings](CppStdString.htm) can dragged.

 

 

 

 

 

Downloads
---------

 

-   [Download the source code for Qt example
    24 (zip)](CppQtExample24.zip)
-   [View a screenshot of Qt example 24 (png)](CppQtExample24.png)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQtExample24/CppQtExample24.pro
----------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists(../../DesktopApplication.pri) {   QT += core gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   TEMPLATE = app    CONFIG(debug, debug|release) {     message(Debug mode)   }    CONFIG(release, debug|release) {     message(Release mode)     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }    QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra    unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../../Projects/Libraries/boost_1_55_0   } }  SOURCES += \     qtmain.cpp \     tooltesttextpositionwidgetdialog.cpp \     qttextpositionwidget.cpp  HEADERS += \     tooltesttextpositionwidgetdialog.h \     qttextpositionwidget.h  FORMS += tooltesttextpositionwidgetdialog.ui`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample24/qtmain.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QApplication> #include "tooltesttextpositionwidgetdialog.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   ToolTestTextPositionWidgetDialog w;   w.show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample24/qttextpositionwidget.h
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTTEXTPOSITIONWIDGET_H #define QTTEXTPOSITIONWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsView> #pragma GCC diagnostic pop  struct QtTextPositionWidget : public QGraphicsView {   QtTextPositionWidget(const std::vector<std::string>& items); };  #endif // QTTEXTPOSITIONWIDGET_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample24/qttextpositionwidget.cpp
-----------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <cassert> #include <QGraphicsScene> #include <QGraphicsTextItem> #include "qttextpositionwidget.h" #pragma GCC diagnostic pop  QtTextPositionWidget::QtTextPositionWidget(const std::vector<std::string>& items) {   QGraphicsScene * const scene = new QGraphicsScene(this);   this->setScene(scene);    std::for_each(items.begin(),items.end(),     [this,scene](const std::string& s)     {       QGraphicsTextItem * item = new QGraphicsTextItem;       item->setPlainText(s.c_str());       item->setFlags(QGraphicsItem::ItemIsMovable);       item->setPos(this->width() / 2.0, this->height() / 2.0);       scene->addItem(item);     }   ); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample24/tooltesttextpositionwidgetdialog.h
---------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef TOOLTESTTEXTPOSITIONWIDGETDIALOG_H #define TOOLTESTTEXTPOSITIONWIDGETDIALOG_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QDialog> #pragma GCC diagnostic pop  namespace Ui {   class ToolTestTextPositionWidgetDialog; }  class ToolTestTextPositionWidgetDialog : public QDialog {   Q_OBJECT      public:   explicit ToolTestTextPositionWidgetDialog(QWidget *parent = 0);   ToolTestTextPositionWidgetDialog(const ToolTestTextPositionWidgetDialog&) = delete;   ToolTestTextPositionWidgetDialog& operator=(const ToolTestTextPositionWidgetDialog&) = delete;   ~ToolTestTextPositionWidgetDialog();      private:   Ui::ToolTestTextPositionWidgetDialog *ui; };  #endif // TOOLTESTTEXTPOSITIONWIDGETDIALOG_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample24/tooltesttextpositionwidgetdialog.cpp
-----------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include "qttextpositionwidget.h" #include "tooltesttextpositionwidgetdialog.h" #include "ui_tooltesttextpositionwidgetdialog.h" #pragma GCC diagnostic pop  ToolTestTextPositionWidgetDialog::ToolTestTextPositionWidgetDialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::ToolTestTextPositionWidgetDialog) {   ui->setupUi(this);   ui->layout->addWidget(new QtTextPositionWidget( { "A", "B", "C", "D", "E", "F" } )); }  ToolTestTextPositionWidgetDialog::~ToolTestTextPositionWidgetDialog() {   delete ui; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
