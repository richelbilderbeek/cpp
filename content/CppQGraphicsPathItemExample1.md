



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QGraphicsPathItem example 1: basic](CppQGraphicsPathItemExample1.md)
========================================================================================================

 

[QGraphicsPathItem example 1: basic](CppQGraphicsPathItemExample1.md)
is a [QGraphicsPathItem](CppQGraphicsPathItem.md) example. This example
shows how to draw some selectable and movable
[QGraphicsPathItem](CppQGraphicsPathItem.md).

 

-   [View a screenshot of
    'CppQGraphicsPathItemExample1' (png)](CppQGraphicsPathItemExample1.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsPathItemExample1' (zip)](CppQGraphicsPathItemExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQGraphicsPathItemExample1.pro
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

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
