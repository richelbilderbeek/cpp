[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QGraphicsSimpleTextItemExample3](CppQGraphicsSimpleTextItemExample3.htm)
==========================================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QGraphicsSimpleTextItem example 3: use tab to change
focus](CppQGraphicsSimpleTextItemExample3.htm) is a
[QGraphicsSimpleTextItem](CppQGraphicsSimpleTextItem.htm) example that
displays multiple
[QGraphicsSimpleTextItems](CppQGraphicsSimpleTextItem.htm) with their
coordinats as text. These items are movable and selectable. By pressing
tab, focus will be set to a random item.

 

-   [View a screenshot of
    'QGraphicsSimpleTextItemExample3' (png)](CppQGraphicsSimpleTextItemExample3.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'QGraphicsSimpleTextItemExample3' (zip)](CppQGraphicsSimpleTextItemExample3.zip)
-   ![Windows](PicWindows.png) [Download a Windows executable of
    'QGraphicsSimpleTextItemExample3' (zip)](CppQGraphicsSimpleTextItemExample3Exe.zip)

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

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQGraphicsSimpleTextItemExample3/CppQGraphicsSimpleTextItemExample3.pro
--------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists(../../DesktopApplication.pri) {   QT       += core gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets    win32 {     greaterThan(QT_MAJOR_VERSION, 4): QT += svg   }    TEMPLATE = app    CONFIG(debug, debug|release) {     message(Debug mode)   }    CONFIG(release, debug|release) {     message(Release mode)     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }    QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++    unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   INCLUDEPATH += \     ../../Libraries/boost_1_55_0 }  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qttextitem.cpp  HEADERS += \     qtwidget.h \     qttextitem.h`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample3/qtmain.cpp
-----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample3/qttextitem.h
-------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTTEXTITEM_H #define QTTEXTITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsSimpleTextItem> #pragma GCC diagnostic pop  struct QtTextItem : public QGraphicsSimpleTextItem {   QtTextItem(QGraphicsItem *parent = 0);    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget); };  #endif // QTTEXTITEM_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample3/qttextitem.cpp
---------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qttextitem.h"  #include <cassert> #include <sstream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs"  #pragma GCC diagnostic pop  QtTextItem::QtTextItem(QGraphicsItem *parent) : QGraphicsSimpleTextItem(parent) {   this->setFlags(       QGraphicsItem::ItemIsFocusable     | QGraphicsItem::ItemIsMovable     | QGraphicsItem::ItemIsSelectable);  }  void QtTextItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget) {   std::stringstream s;   s << "(" << static_cast<int>(this->pos().x()) << "," << static_cast<int>(this->pos().y()) << ")";   this->setText(s.str().c_str());   QGraphicsSimpleTextItem::paint(painter,option,widget); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample3/qtwidget.h
-----------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsView> #pragma GCC diagnostic pop  ///The widget holding the items struct QtWidget : public QGraphicsView {   QtWidget(QWidget *parent = 0);     ///Respond to a key press   void keyPressEvent(QKeyEvent *event); };  #endif // QTWIDGET_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample3/qtwidget.cpp
-------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtwidget.h"  #include <cassert> #include <cmath> #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/math/constants/constants.hpp> #include <QGraphicsScene> #include <QKeyEvent> #include "qttextitem.h" #pragma GCC diagnostic pop  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent) {   const int n_items = 16;   for (int i=0; i!=n_items; ++i)   {      const double angle       = boost::math::constants::two_pi<double>()       * (static_cast<double>(i+0) / static_cast<double>(n_items))     ;     const double ray = 150.0;     const double x =  std::sin(angle) * ray;     const double y = -std::cos(angle) * ray;      QtTextItem * const item = new QtTextItem;     item->setPos(x,y);     scene()->addItem(item);   } }   void QtWidget::keyPressEvent(QKeyEvent *event) {   switch (event->key())   {     case Qt::Key_Tab:     {       //Let existing item lose focus       if (QGraphicsItem * const item = scene()->focusItem())       {         //Really lose focus         item->setEnabled(false);         item->clearFocus();         item->setEnabled(true);       }       //Let a random item receive focus       const QList<QGraphicsItem *> items = this->items();       items.at( std::rand() % items.size() )->setFocus();     }     break;   }    //Let QGraphicsView do the rest...   QGraphicsView::keyPressEvent(event); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
