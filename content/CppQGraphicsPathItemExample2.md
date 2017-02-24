

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QGraphicsPathItem example 2: Bezier quadratic lines](CppQGraphicsPathItemExample2.htm)
=========================================================================================================================

 

[QGraphicsPathItem example 2: Bezier quadratic
lines](CppQGraphicsPathItemExample2.htm) is a
[QGraphicsPathItem](CppQGraphicsPathItem.htm) example. This example
shows how to use [QGraphicsRectItems](CppQGraphicsRectItem.htm) to
manipulatie [QGraphicsPathItems](CppQGraphicsPathItem.htm), resulting in
quadratic Bezier curves.

 

-   [View a screenshot of
    'CppQGraphicsPathItemExample2' (png)](CppQGraphicsPathItemExample2.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsPathItemExample2' (zip)](CppQGraphicsPathItemExample2.zip)

 

Note that the curves do not go through the middle control rectangle.
[QGraphicsPathItem example 3: Bezier quadratic lines
again](CppQGraphicsPathItemExample3.htm) does have this feature.

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQGraphicsPathItemExample2.pro
-------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror TARGET = CppQGraphicsPathItemExample2 TEMPLATE = app  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qtpathitem.cpp \     qtrectitem.cpp  HEADERS += \     qtwidget.h \     qtpathitem.h \     qtrectitem.h `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtmain.cpp
----------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtpathitem.h
------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTPATHITEM_H #define QTPATHITEM_H  #include <QGraphicsPathItem>  struct QtRectItem;  struct QtPathItem : public QGraphicsPathItem {   QtPathItem(     const QtRectItem * const from,     const QtRectItem * const mid,     const QtRectItem * const to,     QGraphicsItem *parent = 0, QGraphicsScene *scene = 0);    protected:   void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);    private:   const QtRectItem * const m_from;   const QtRectItem * const m_mid;   const QtRectItem * const m_to; };  #endif // QTPATHITEM_H `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtpathitem.cpp
--------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QPainter> #include "qtpathitem.h" #include "qtrectitem.h"  QtPathItem::QtPathItem(   const QtRectItem * const from,   const QtRectItem * const mid,   const QtRectItem * const to,   QGraphicsItem *parent, QGraphicsScene *scene)   : QGraphicsPathItem(parent,scene),     m_from(from),     m_mid(mid),     m_to(to) {   assert(!(flags() & QGraphicsItem::ItemIsMovable) );   assert(!(flags() & QGraphicsItem::ItemIsSelectable) ); }  void QtPathItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget) {   QPainterPath path;   path.moveTo(m_from->pos());   path.quadTo(m_mid->pos(),m_to->pos());   this->setPath(path);    QGraphicsPathItem::paint(painter,option,widget); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtrectitem.h
------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTRECTITEM_H #define QTRECTITEM_H  #include <QGraphicsRectItem>  struct QtRectItem : public QGraphicsRectItem {   QtRectItem(QGraphicsItem *parent = 0, QGraphicsScene *scene = 0); };  #endif // QTRECTITEM_H `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtrectitem.cpp
--------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtrectitem.h"  QtRectItem::QtRectItem(QGraphicsItem *parent, QGraphicsScene *scene)  : QGraphicsRectItem(parent,scene) {   this->setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsMovable);    const double length = 20;   this->setRect(-length/2.0,-length/2.0,length,length); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtwidget.h
----------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #include <QGraphicsView>  ///The widget holding the items struct QtWidget : public QGraphicsView {   QtWidget(QWidget *parent = 0); };  #endif // QTWIDGET_H `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtwidget.cpp
------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QGraphicsScene> #include "qtrectitem.h" #include "qtpathitem.h" #include "qtwidget.h"  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent) {   const int n_items = 16;   std::vector<QtRectItem *> rects;    for (int i=0; i!=n_items; ++i)   {     const double angle = 2.0 * M_PI * (static_cast<double>(i) / static_cast<double>(n_items));     const double x1 =  std::sin(angle) * 100.0;     const double y1 = -std::cos(angle) * 100.0;     QtRectItem * const rect = new QtRectItem;     rect->setPos(x1,y1);     scene()->addItem(rect);     rects.push_back(rect);   }   for (int i=0; i!=n_items; ++i)   {     QtPathItem * const item = new QtPathItem(       rects[(i+0) % n_items],       rects[(i+1) % n_items],       rects[(i+2) % n_items]);     scene()->addItem(item);   } } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
