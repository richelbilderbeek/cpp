[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QGraphicsObjectExample1](CppQGraphicsObjectExample1.htm)
==========================================================================

 

[QGraphicsObject example 1: basic](CppQGraphicsObjectExample1.htm) is a
[QGraphicsObject](CppQGraphicsObject.htm) [example](CppExample.htm).
Actually, it is not so basic, as it is a conversion from
[QGraphicsPixmapItem example 4: pixmap that changes
cursor](CppQGraphicsPixmapItemExample4.htm), where the
[QGraphicsPixmapItem](CppQGraphicsPixmapItem.htm) is replaced by a
[QGraphicsObject](CppQGraphicsObject.htm).

 

-   [View a screenshot of
    'CppQGraphicsObjectExample1' (png)](CppQGraphicsObjectExample1.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsObjectExample1' (zip)](CppQGraphicsObjectExample1.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQGraphicsObjectExample1/CppQGraphicsObjectExample1.pro
----------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qtitem.cpp  HEADERS += \     qtwidget.h \     qtitem.h  RESOURCES += \     CppQGraphicsObjectExample1.qrc`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsObjectExample1/qtitem.h
-------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTITEM_H #define QTITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsObject> #include <boost/signals2.hpp> #pragma GCC diagnostic pop  //Forward declaration struct QPixmap;  ///A QGraphicsObject that /// - loads its pixmap from resources /// - is clickable /// - is movable /// - changes the cursor class QtItem : public QGraphicsObject {   Q_OBJECT    public:    QtItem(QGraphicsItem *parent = 0);    ///Signal emitted when clicked   boost::signals2::signal<void (QtItem*)> m_clicked_signal;    protected:   void mousePressEvent(QGraphicsSceneMouseEvent *event);    void hoverMoveEvent(QGraphicsSceneHoverEvent *event);    QRectF boundingRect() const;    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);    private:   ///The pixmap   boost::scoped_ptr<QPixmap> m_pixmap; };  #endif // QTITEM_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsObjectExample1/qtitem.cpp
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QCursor> #include <QPainter> #include <QPixmap> #include "qtitem.h" #pragma GCC diagnostic pop  QtItem::QtItem(QGraphicsItem *parent)   : QGraphicsObject(parent),     m_clicked_signal{},     m_pixmap{new QPixmap(":/images/PicR.png")} {   assert(!m_pixmap->isNull()     && "Assume pixmap is loaded successfully");    this->setFlags(       QGraphicsItem::ItemIsMovable     | QGraphicsItem::ItemIsSelectable   );     //Without this line, hoverMoveEvent will not be called   this->setAcceptHoverEvents(true); }  QRectF QtItem::boundingRect() const {   const QRectF targetRect = m_pixmap->rect().translated(-m_pixmap->rect().center());   assert(targetRect.center().x() >= -1.0);   assert(targetRect.center().x() <=  1.0);   assert(targetRect.center().y() >= -1.0);   assert(targetRect.center().y() <=  1.0);   return targetRect; }  void QtItem::hoverMoveEvent(QGraphicsSceneHoverEvent *) {   this->setCursor(QCursor(Qt::PointingHandCursor)); }  void QtItem::mousePressEvent(QGraphicsSceneMouseEvent *) {   //Emit the Boost signal   m_clicked_signal(this); }  void QtItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *) {   const QRectF targetRect = m_pixmap->rect().translated(-m_pixmap->rect().center());   assert(targetRect.center().x() >= -1.0);   assert(targetRect.center().x() <=  1.0);   assert(targetRect.center().y() >= -1.0);   assert(targetRect.center().y() <=  1.0);    painter->drawPixmap(targetRect,*m_pixmap,m_pixmap->rect());    //Draw a thick red line around the pixmap when it is selected   if (this->isSelected())   {     painter->setPen(QPen(QColor(255,0,0),2));     painter->drawRect(this->boundingRect().adjusted(2.0,2.0,-2.0,-2.0));   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsObjectExample1/qtmain.cpp
---------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QApplication> #include "qtwidget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   w.setGeometry(100,100,400,400);   w.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsObjectExample1/qtwidget.h
---------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsView> #pragma GCC diagnostic pop  struct QtItem;  struct QtWidget : public QGraphicsView {   QtWidget();    ///Respond to a click on a QtItem   void OnItemClick(QtItem * const item); };  #endif // QTWIDGET_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsObjectExample1/qtwidget.cpp
-----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <boost/bind.hpp> #include <boost/lambda/bind.hpp>  #include <QGraphicsScene> #include <QGraphicsPixmapItem>  #include "qtitem.h" #include "qtwidget.h" #pragma GCC diagnostic pop  QtWidget::QtWidget() {   QGraphicsScene * const scene = new QGraphicsScene(this);   this->setScene(scene);    const int n_items = 64;   for (int i=0; i!=n_items; ++i)   {     QtItem * const item = new QtItem;     item->m_clicked_signal.connect(       boost::bind(         &QtWidget::OnItemClick,this, boost::lambda::_1));     //Scatter those items around a bit     item->setPos(       - 128 + (std::rand() % 256),       - 128 + (std::rand() % 256));      scene->addItem(item);   } }  void QtWidget::OnItemClick(QtItem * const item) {   item->setRotation( item->rotation() + 15.0); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
