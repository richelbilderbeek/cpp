
 

 

 

 

 

([C++](Cpp.md)) [QGraphicsPixmapItemExample5](CppQGraphicsPixmapItemExample5.md)
==================================================================================

 

[QGraphicsPixmapItem example 5: respond to cursor moving over
pixmap](CppQGraphicsPixmapItemExample5.md) is a
[QGraphicsPixmapItem](CppQGraphicsPixmapItem.md) example. This example
shows how to let the [QGraphicsPixmapItem](CppQGraphicsPixmapItem.png)
[emit](CppEmit.md) a [(Boost) signal](CppBoostSignal.md) so that the
[QGraphicsView](CppQGraphicsView.md) can rotate it. It is usefull to be
able to send signals to the [QGraphicsView](CppQGraphicsView.md),
because [QGraphicsView](CppQGraphicsView.md) is a
[QObject](CppQObject.md), where
[QGraphicsPixmapItem](CppQGraphicsPixmapItem.md) is not. Due to this,
the [item](CppQGraphicsPixmapItem.md) cannot work with [Qt
signals](CppQtSignal.md), but the [view](CppQGraphicsView.md) can
(note that [QGraphicsObject](CppQGraphicsObject.md) is a
[QGraphicsItem](CppQGraphicsItem.md) that can work with signals and
slots).

 

-   [View a screenshot of
    'CppQGraphicsPixmapItemExample5' (png)](CppQGraphicsPixmapItemExample5.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsPixmapItemExample5' (zip)](CppQGraphicsPixmapItemExample5.zip)

 

[QGraphicsPixmapItem example 5: respond to cursor moving over
pixmap](CppQGraphicsPixmapItemExample5.md) is the predecessor of
[QGraphicsPixmapItem example 6: let the view respond to cursor moving
over pixmap](CppQGraphicsPixmapItemExample6.md), which is the
predecessor of [QGraphicsPixmapItem example 7: respond to cursor moving
over pixmap while holding the cursor
still](CppQGraphicsPixmapItemExample7.md).

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsPixmapItemExample5/CppQGraphicsPixmapItemExample5.pro
------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists (../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists (../../DesktopApplication.pri) {   QT += core printsupport   QT += gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets svg   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../Libraries/boost_1_55_0   } }  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qtitem.cpp  HEADERS += \     qtwidget.h \     qtitem.h  RESOURCES += \     CppQGraphicsPixmapItemExample5.qrc`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsPixmapItemExample5/qtitem.h
-----------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTITEM_H #define QTITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsPixmapItem> #include <boost/signals2.hpp> #pragma GCC diagnostic pop  ///A QGraphicsPixmapItem that loads its pixmap from resources ///and is clickable struct QtItem : public QGraphicsPixmapItem {   QtItem(QGraphicsItem *parent = 0);    ///Signal emitted when the cursor moves over this item   boost::signals2::signal<void (QtItem*)> m_signal_move_over;     protected:   void hoverMoveEvent(QGraphicsSceneHoverEvent *event);    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);  };  #endif // QTITEM_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsPixmapItemExample5/qtitem.cpp
-------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <cassert> #include <QCursor> #include <QPainter> #include "qtitem.h" #pragma GCC diagnostic pop  QtItem::QtItem(QGraphicsItem *parent)   : QGraphicsPixmapItem(parent),     m_signal_move_over{} {   assert(this->pixmap().isNull()     && "Assume no pixmap loaded yet");    //Load the pixmap from resources   this->setPixmap(QPixmap(":/images/PicR.png"));    assert(!this->pixmap().isNull()     && "Assume pixmap is loaded successfully");    //Let the item have (0.0,0.0) as its center,   //so it will remain in place when rotating   this->setOffset(-pixmap().rect().center());    this->setFlags(       QGraphicsItem::ItemIsMovable     | QGraphicsItem::ItemIsSelectable   );    //Without this line, hoverMoveEvent will not be called   this->setAcceptHoverEvents(true); }  void QtItem::hoverMoveEvent(QGraphicsSceneHoverEvent *) {   //Emit the boost signal   m_signal_move_over(this); }  void QtItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget) {   //Let QGraphicsPixmapItem handle most of the painting   QGraphicsPixmapItem::paint(painter,option,widget);    //Draw a thick red line around the pixmap when it is selected   if (this->isSelected())   {     painter->setPen(QPen(QColor(255,0,0),3));     painter->drawRoundedRect(this->boundingRect().adjusted(3.0,3.0,-3.0,-3.0),6.0,6.0);   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsPixmapItemExample5/qtmain.cpp
-------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QApplication> #include "qtwidget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   w.setGeometry(100,100,400,400);   w.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsPixmapItemExample5/qtwidget.h
-------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsView> #pragma GCC diagnostic pop  ///Forward declaration struct QtItem;  struct QtWidget : public QGraphicsView {   QtWidget();    ///Respond to a click on a QtItem   void OnItemMoveOver(QtItem * const item); };  #endif // QTWIDGET_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsPixmapItemExample5/qtwidget.cpp
---------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <cassert>  #include <boost/bind.hpp> #include <boost/lambda/bind.hpp>  #include <QGraphicsScene> #include <QGraphicsPixmapItem>  #include "qtitem.h" #include "qtwidget.h" #pragma GCC diagnostic pop  QtWidget::QtWidget() {   QGraphicsScene * const scene = new QGraphicsScene(this);   this->setScene(scene);    const int n_items = 8;   for (int i=0; i!=n_items; ++i)   {     QtItem * const item = new QtItem;     item->m_signal_move_over.connect(       boost::bind(         &QtWidget::OnItemMoveOver,this, boost::lambda::_1));     //Scatter those items around a bit     item->setPos(       - 128 + (std::rand() % 256),       - 128 + (std::rand() % 256));      scene->addItem(item);   } }  void QtWidget::OnItemMoveOver(QtItem * const item) {   item->setRotation(item->rotation() + 10.0); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

