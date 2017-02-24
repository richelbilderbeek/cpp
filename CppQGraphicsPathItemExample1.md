[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QGraphicsPathItem example 1: basic](CppQGraphicsPathItemExample1.htm)
========================================================================================================

 

[QGraphicsPathItem example 1: basic](CppQGraphicsPathItemExample1.htm)
is a [QGraphicsPathItem](CppQGraphicsPathItem.htm) example. This example
shows how to draw some selectable and movable
[QGraphicsPathItem](CppQGraphicsPathItem.htm).

 

-   [View a screenshot of
    'CppQGraphicsPathItemExample1' (png)](CppQGraphicsPathItemExample1.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsPathItemExample1' (zip)](CppQGraphicsPathItemExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQGraphicsPathItemExample1.pro
-------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror TARGET = CppQGraphicsPathItemExample1 TEMPLATE = app  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qtitem.cpp  HEADERS += \     qtwidget.h \     qtitem.h `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtitem.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTITEM_H #define QTITEM_H  #include <QGraphicsPathItem>  struct QtItem : public QGraphicsPathItem {   QtItem(QGraphicsItem *parent = 0, QGraphicsScene *scene = 0); };  #endif // QTITEM_H `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtitem.cpp
----------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QPainter> #include "qtitem.h"  QtItem::QtItem(   QGraphicsItem *parent, QGraphicsScene *scene)   : QGraphicsPathItem(parent,scene) {   this->setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsMovable);    //Set a simple path   QPainterPath path;   path.quadTo(100,0,100,100);   this->setPath(path); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtmain.cpp
----------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtwidget.h
----------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #include <QGraphicsView>  ///The widget holding the items struct QtWidget : public QGraphicsView {   QtWidget(QWidget *parent = 0); };  #endif // QTWIDGET_H `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtwidget.cpp
------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QGraphicsScene> #include "qtitem.h" #include "qtwidget.h"  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent) {   const int n_items = 16;   for (int i=0; i!=n_items; ++i)   {     const double angle = 2.0 * M_PI * (static_cast<double>(i) / static_cast<double>(n_items));     const double x1 =  std::sin(angle) * 100.0;     const double y1 = -std::cos(angle) * 100.0;     QtItem * const item = new QtItem;     item->setPos(x1,y1);     scene()->addItem(item);   } } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
