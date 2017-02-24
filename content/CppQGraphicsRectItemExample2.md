



 

 

 

 

 

([C++](Cpp.md)) [QGraphicsRectItemExample2](CppQGraphicsRectItemExample2.md)
==============================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QGraphicsRectItem example 2: Coordinat
display](CppQGraphicsRectItemExample2.md) is a
[QGraphicsRectItem](CppQGraphicsRectItem.md) example that displays
multiple [QGraphicsRectItems](CppQGraphicsRectItem.md). These items are
movable and selectable. Additionally, the items display their
coordinats.

 

-   [View a screenshot of
    'QGraphicsRectItemExample2' (png)](CppQGraphicsRectItemExample2.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'QGraphicsRectItemExample2' (zip)](CppQGraphicsRectItemExample2.zip)
-   ![Windows](PicWindows.png) [Download a Windows executable of
    'QGraphicsRectItemExample2' (zip)](CppQGraphicsRectItemExample2Exe.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsRectItemExample2/CppQGraphicsRectItemExample2.pro
--------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qtrectitem.cpp  HEADERS += \     qtwidget.h \     qtrectitem.h`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample2/qtmain.cpp
-----------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample2/qtrectitem.h
-------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTRECTITEM_H #define QTRECTITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsRectItem> #pragma GCC diagnostic pop  struct QtRectItem : public QGraphicsRectItem {   QtRectItem(QGraphicsItem *parent = 0);    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget); };  #endif // QTRECTITEM_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample2/qtrectitem.cpp
---------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "qtrectitem.h"  #include <cassert> #include <sstream> #include <QGraphicsScene> #include <QPainter> #pragma GCC diagnostic pop  QtRectItem::QtRectItem(QGraphicsItem *parent)  : QGraphicsRectItem(parent) {   this->setFlags(       QGraphicsItem::ItemIsFocusable     | QGraphicsItem::ItemIsMovable     | QGraphicsItem::ItemIsSelectable); }  void QtRectItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget) {   //Create the text   std::stringstream s;   s << "(" << static_cast<int>(this->pos().x()) << "," << static_cast<int>(this->pos().y()) << ")";   const std::string t = s.str();    //Resize the rect to the text its size (using QFontMetrics to find this out)   QFontMetrics q(painter->font());   const double width = q.width(t.c_str());   const double height = q.height();   this->setRect(-0.5 * width, -0.5 * height, width, height);    //Draw the text   painter->drawText(rect(),t.c_str());    //Let QGraphicsRectItem handle the default painting   QGraphicsRectItem::paint(painter,option,widget); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample2/qtwidget.h
-----------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsView> #pragma GCC diagnostic pop  ///The widget holding the items struct QtWidget : public QGraphicsView {   QtWidget(QWidget *parent = 0); };  #endif // QTWIDGET_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample2/qtwidget.cpp
-------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "qtwidget.h"  #include <cassert> #include <cmath> #include <iostream> #include <QGraphicsScene> #include <QKeyEvent> #include <QGraphicsSimpleTextItem> #include "qtrectitem.h" #pragma GCC diagnostic pop  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent) {   const int n_items = 16;   for (int i=0; i!=n_items; ++i)   {     const double angle = 2.0 * M_PI * (static_cast<double>(i) / static_cast<double>(n_items));     const double ray = 150.0;     const double x =  std::sin(angle) * ray;     const double y = -std::cos(angle) * ray;      QtRectItem * const item = new QtRectItem;     item->setPos(x,y);     scene()->addItem(item);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample2/crosscompiletowindows.sh
-------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh #From http://richelbilderbeek.nl/CppQtCrosscompileToWindowsExample15.htm  echo "Cross compiling to Windows"  echo "1/2: Creating Windows makefile" i686-pc-mingw32-qmake CppQGraphicsRectItemExample2.pro  echo "2/2: making makefile"  make  echo "Done"`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
