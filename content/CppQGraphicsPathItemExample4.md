
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QGraphicsPathItem example 4: Bezier quadratic lines with arrow heads](CppQGraphicsPathItemExample4.md)
==========================================================================================================================================

 

[QGraphicsPathItem example 4: Bezier quadratic lines with arrow
heads](CppQGraphicsPathItemExample4.md) is a
[QGraphicsPathItem](CppQGraphicsPathItem.md) example. This example
shows how to use [QGraphicsRectItems](CppQGraphicsRectItem.md) to
manipulatie [QGraphicsPathItems](CppQGraphicsPathItem.md), resulting in
quadratic Bezier curves.

 

-   [View a screenshot of
    'CppQGraphicsPathItemExample4' (png)](CppQGraphicsPathItemExample4.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsPathItemExample4' (zip)](CppQGraphicsPathItemExample4.zip)
-   ![Windows](PicWindows.png) [Download a Windows executable of
    'CppQGraphicsPathItemExample4' (zip)](CppQGraphicsPathItemExample4Exe.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQGraphicsPathItemExample4.pro
-------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror TARGET = CppQGraphicsPathItemExample4 TEMPLATE = app  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qtpathitem.cpp \     qtrectitem.cpp  HEADERS += \     qtwidget.h \     qtpathitem.h \     qtrectitem.h `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtmain.cpp
----------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifdef _WIN32 //See http://www.richelbilderbeek.nl/CppCompileErrorSwprintfHasNotBeenDeclared.htm #undef __STRICT_ANSI__ #endif  #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtpathitem.h
------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTPATHITEM_H #define QTPATHITEM_H  #include <QGraphicsPathItem>  struct QtRectItem;  struct QtPathItem : public QGraphicsItem {   QtPathItem(     const QtRectItem * const from,     const bool tail,     const QtRectItem * const mid,     const bool head,     const QtRectItem * const to,     QGraphicsItem *parent = 0, QGraphicsScene *scene = 0);    protected:   ///Change the cursor when the user moves the mouse cursor in the bounding rectangle   void hoverEnterEvent(QGraphicsSceneHoverEvent *event);    ///Respond to key press   void keyPressEvent(QKeyEvent *event);    ///The rectangle that containg the item, used for rough calculations like   ///collision detection   QRectF boundingRect() const;    ///Respond to mouse press   void mousePressEvent(QGraphicsSceneMouseEvent *event);    ///Paint a QtPathItem   void paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *);    ///More precise shape compared to boundingRect   ///In this example, it is redefined to ease selecting those thin lines   QPainterPath shape() const;    private:   ///The extra width given to the line for easier clicking   static const double m_click_easy_width;    ///The item where the arrow originates from   const QtRectItem * const m_from;    ///Show arrow at head   bool m_head;    ///The item where the arrow pass through in the middle   const QtRectItem * const m_mid;    ///Show arrow at tail   bool m_tail;    ///The item where the arrow points to   ///(would the arrow and tail heads not be reversible)   const QtRectItem * const m_to;    ///Obtain the angle in radians between two deltas   ///12 o'clock is 0.0 * pi   /// 3 o'clock is 0.5 * pi   /// 6 o'clock is 1.0 * pi   /// 9 o'clock is 1.5 * pi   //From www.richelbilderbeek.nl/CppGetAngle.htm   static double GetAngle(const double dx, const double dy); };  #endif // QTPATHITEM_H `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtpathitem.cpp
--------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifdef _WIN32 //See http://www.richelbilderbeek.nl/CppCompileErrorSwprintfHasNotBeenDeclared.htm #undef __STRICT_ANSI__ #endif  //#include own header file as first substantive line of code, from: // * John Lakos. Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Section 3.2, page 110 #include "qtpathitem.h"  #include <cassert> #include <cmath>  #include <QCursor> #include <QGraphicsSceneMouseEvent> #include <QKeyEvent> #include <QPainter>  #include "qtrectitem.h"  const double QtPathItem::m_click_easy_width = 10.0;  QtPathItem::QtPathItem(   const QtRectItem * const from,   const bool tail,   const QtRectItem * const mid,   const bool head,   const QtRectItem * const to,   QGraphicsItem *parent, QGraphicsScene *scene)   : QGraphicsItem(parent,scene),     m_from(from),     m_head(head),     m_mid(mid),     m_tail(tail),     m_to(to) {   this->setFlags(QGraphicsItem::ItemIsSelectable);    assert(!(flags() & QGraphicsItem::ItemIsMovable) );   assert( (flags() & QGraphicsItem::ItemIsSelectable) );    //Accept enterHoverEvents   this->setAcceptHoverEvents(true);    //Put this arrow item under the rect   this->setZValue(mid->zValue() - 1.0); }  QRectF QtPathItem::boundingRect() const {   return shape().boundingRect(); }  double QtPathItem::GetAngle(const double dx, const double dy) {   return M_PI - (std::atan(dx/dy)); }  void QtPathItem::hoverEnterEvent(QGraphicsSceneHoverEvent *) {   this->setCursor(QCursor(Qt::PointingHandCursor)); }  void QtPathItem::keyPressEvent(QKeyEvent *event) {   switch (event->key())   {     case Qt::Key_F1:     case Qt::Key_1:     case Qt::Key_T:     case Qt::Key_Minus:       m_tail = !m_tail;       this->update();       break;     case Qt::Key_F2:     case Qt::Key_2:     case Qt::Key_H:     case Qt::Key_Plus:       m_head = !m_head;       this->update();       break;     default:       break;   }   QGraphicsItem::keyPressEvent(event); }  void QtPathItem::mousePressEvent(QGraphicsSceneMouseEvent *event) {   if (event->modifiers() & Qt::ShiftModifier)   {     if ((event->pos() - this->m_from->pos()).manhattanLength() < 10.0)     {       m_tail = !m_tail;       this->update();     }     else if ((event->pos() - this->m_to->pos()).manhattanLength() < 10.0)     {       m_head = !m_head;       this->update();     }   }   QGraphicsItem::mousePressEvent(event); }   //void QtPathItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget) void QtPathItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *) {   painter->setRenderHint(QPainter::Antialiasing);    if (this->isSelected())   {     const QColor color(255,0,0);     QPen pen;     pen.setColor(color);     pen.setWidth(3);     painter->setPen(pen);   }   else   {     const QColor color(0,0,0);     QPen pen;     pen.setColor(color);     pen.setWidth(1);     painter->setPen(pen);   }    QPainterPath curve;   curve.moveTo(m_from->pos());   //Line must go _though_ mid pos, instead of using it as a virtual hinge point   //Solution:   // - define point 'center' as the middle between from and to   // - define point 'beyond' as the mirror point of 'center', using mid_pos as a mirror   const QPointF center((m_from->pos() + m_to->pos()) / 2.0);   const double dx_mid_center = m_mid->pos().x() - center.x();   const double dy_mid_center = m_mid->pos().y() - center.y();   const QPointF beyond(center.x() + dx_mid_center + dx_mid_center, center.y() + dy_mid_center + dy_mid_center);   curve.quadTo(beyond,m_to->pos());   painter->drawPath(curve);     {      const double sz = 10.0; //pixels     if (m_tail)     {       //The angle from midpoint to tail       //Thanks goes out to Toine van den Bogaart and Theo van den Bogaart for being happy to help with the math       const double dx = beyond.x() - m_from->pos().x();       const double dy = beyond.y() - m_from->pos().y();       double angle = GetAngle(dx,dy);       if (dy >= 0.0) angle = (1.0 * M_PI) + angle;       const QPointF p0 = m_from->pos();       const QPointF p1         = p0 + QPointF(            std::sin(angle + M_PI + (M_PI * 0.1)) * sz,           -std::cos(angle + M_PI + (M_PI * 0.1)) * sz);       const QPointF p2         = p0 + QPointF(            std::sin(angle + M_PI - (M_PI * 0.1)) * sz,           -std::cos(angle + M_PI - (M_PI * 0.1)) * sz);       painter->drawPolygon(QPolygonF() << p0 << p1 << p2);     }     if (m_head)     {       //The angle from midpoint to head       const double dx = m_to->pos().x() - beyond.x();       const double dy = m_to->pos().y() - beyond.y();       double angle = GetAngle(dx,dy);       if (dy >= 0.0) angle = (1.0 * M_PI) + angle;        const QPointF p0 = m_to->pos();       const QPointF p1         = p0 + QPointF(            std::sin(angle +  0.0 + (M_PI * 0.1)) * sz,           -std::cos(angle +  0.0 + (M_PI * 0.1)) * sz);       const QPointF p2         = p0 + QPointF(            std::sin(angle +  0.0 - (M_PI * 0.1)) * sz,           -std::cos(angle +  0.0 - (M_PI * 0.1)) * sz);        painter->drawPolygon(QPolygonF() << p0 << p1 << p2);     }   }   //QGraphicsItem::paint(painter,option,widget);   //this->update(); }  QPainterPath QtPathItem::shape() const {   QPainterPath path;   //Line must go _though_ mid pos, instead of using it as a virtual hinge point   //Solution:   // - define point p as the middle between from and to   // - define point q as the mirror point of q, using mid_pos as a mirror   path.moveTo(m_from->pos());   const QPointF p((m_from->pos() + m_to->pos()) / 2.0);   const double dx = m_mid->pos().x() - p.x();   const double dy = m_mid->pos().y() - p.y();   const QPointF q(p.x() + dx + dx, p.y() + dy + dy);   path.quadTo(q,m_to->pos());    QPainterPathStroker stroker;   stroker.setWidth(m_click_easy_width);   return stroker.createStroke(path); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtrectitem.h
------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTRECTITEM_H #define QTRECTITEM_H  #include <QGraphicsRectItem> #include <boost/signals2.hpp>  struct QtRectItem : public QGraphicsRectItem {   QtRectItem(QGraphicsItem *parent = 0, QGraphicsScene *scene = 0);    boost::signals2::signal<void()> m_signal_mouse_move;   protected:   void mouseMoveEvent(QGraphicsSceneMouseEvent *event); };  #endif // QTRECTITEM_H `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtrectitem.cpp
--------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifdef _WIN32 //See http://www.richelbilderbeek.nl/CppCompileErrorSwprintfHasNotBeenDeclared.htm #undef __STRICT_ANSI__ #endif  //#include own header file as first substantive line of code, from: // * John Lakos. Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Section 3.2, page 110 #include "qtrectitem.h"  QtRectItem::QtRectItem(QGraphicsItem *parent, QGraphicsScene *scene)  : QGraphicsRectItem(parent,scene) {   this->setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsMovable);    const double length = 4;   this->setRect(-length/2.0,-length/2.0,length,length); }  void QtRectItem::mouseMoveEvent(QGraphicsSceneMouseEvent *event) {   m_signal_mouse_move();   QGraphicsRectItem::mouseMoveEvent(event); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtwidget.h
----------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #include <QGraphicsView>  ///The widget holding the items struct QtWidget : public QGraphicsView {   QtWidget(QWidget *parent = 0);    private:   void OnMouseMove(); };  #endif // QTWIDGET_H `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtwidget.cpp
------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifdef _WIN32 //See http://www.richelbilderbeek.nl/CppCompileErrorSwprintfHasNotBeenDeclared.htm #undef __STRICT_ANSI__ #endif  //#include own header file as first substantive line of code, from: // * John Lakos. Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Section 3.2, page 110 #include "qtwidget.h"   #include <cassert> #include <cmath> #include <QGraphicsScene> #include "qtrectitem.h" #include "qtpathitem.h"  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent) {   const int n_items = 18;   std::vector<QtRectItem *> rects;    for (int i=0; i!=n_items; ++i)   {     const double angle = 2.0 * M_PI * (static_cast<double>(i) / static_cast<double>(n_items));     const double x1 =  std::sin(angle) * 100.0;     const double y1 = -std::cos(angle) * 100.0;     QtRectItem * const rect = new QtRectItem;     rect->setPos(x1,y1);     scene()->addItem(rect);     rects.push_back(rect);     rect->m_signal_mouse_move.connect(       boost::bind(&QtWidget::OnMouseMove,this));   }   for (int i=0; i<n_items-2; i+=3)   {     assert(i + 2 < n_items);     QtPathItem * const item = new QtPathItem(       rects[(i+0) % n_items],       false,       rects[(i+1) % n_items],       true,       rects[(i+2) % n_items]);     scene()->addItem(item);   } }  void QtWidget::OnMouseMove() {   this->scene()->update(); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

crosscompiletowindows.sh
------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh #From http://richelbilderbeek.nl/CppQtCrosscompileToWindowsExample15.htm  echo "Cross compiling to Windows: developer version"  echo "1/2: Creating Windows makefile" i686-pc-mingw32-qmake CppQGraphicsPathItemExample4.pro  echo "2/2: making makefile"  make  echo "Done" `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

