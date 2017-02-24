



 

 

 

 

 

([C++](Cpp.md)) [QGraphicsRectItemExample4](CppQGraphicsRectItemExample4.md)
==============================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QGraphicsRectItem example 4: varying pen
widths](CppQGraphicsRectItemExample4.md) is a
[QGraphicsRectItem](CppQGraphicsRectItem.md) example that displays
multiple [QGraphicsRectItems](CppQGraphicsRectItem.md). These items are
movable and selectable. Additionally, the items display their width,
height and pen width, on a linear gradient.

 

-   [View a screenshot of
    'QGraphicsRectItemExample4' (png)](CppQGraphicsRectItemExample4.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'QGraphicsRectItemExample4' (zip)](CppQGraphicsRectItemExample4.zip)
-   ![Windows](PicWindows.png) [Download a Windows executable of
    'QGraphicsRectItemExample4' (zip)](CppQGraphicsRectItemExample4Exe.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsRectItemExample4/CppQGraphicsRectItemExample4.pro
--------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qtrectitem.cpp  HEADERS += \     qtwidget.h \     qtrectitem.h`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample4/qtmain.cpp
-----------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample4/qtrectitem.h
-------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTRECTITEM_H #define QTRECTITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsRectItem> #pragma GCC diagnostic pop  struct QtRectItem : public QGraphicsRectItem {   QtRectItem(QGraphicsItem *parent = 0);    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget); };  #endif // QTRECTITEM_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample4/qtrectitem.cpp
---------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "qtrectitem.h"  #include <cassert> #include <sstream> #include <QGraphicsScene> #include <QLinearGradient> #include <QPainter> #pragma GCC diagnostic pop  QtRectItem::QtRectItem(QGraphicsItem *parent)  : QGraphicsRectItem(parent) {   this->setFlags(       QGraphicsItem::ItemIsFocusable     | QGraphicsItem::ItemIsMovable     | QGraphicsItem::ItemIsSelectable   ); }  void QtRectItem::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget) {    //Resize the rect to the text its size (using QFontMetrics to find this out)   QFontMetrics q(painter->font());   const double width = q.width("(9999x9999x123456.7890)");   const double height = q.height();   const QRectF text_rect(-0.5 * width, -0.5 * height, width, height);   const double padding = 4.0;   this->setRect(text_rect.adjusted(-padding,-padding,padding,padding));    {     QLinearGradient g(this->rect().topLeft(),this->rect().bottomRight());     g.setColorAt(0.0,QColor(128,128,128));     g.setColorAt(1.0,QColor(240,240,240));     this->setBrush(g);   }    //Let QGraphicsRectItem handle the default painting   QGraphicsRectItem::paint(painter,option,widget);    //Create the initial   std::stringstream s;   s << "(" << rect().width()     << " x " << rect().height() << "), "     << this->pen().widthF()   ;   const std::string t = s.str();    //Draw the text on the drawn rectangle   painter->drawText(text_rect,t.c_str()); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample4/qtwidget.h
-----------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QGraphicsView> #pragma GCC diagnostic pop  ///The widget holding the items struct QtWidget : public QGraphicsView {   QtWidget(QWidget *parent = 0); };  #endif // QTWIDGET_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample4/qtwidget.cpp
-------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "qtwidget.h" #include <QGraphicsScene> #include "qtrectitem.h" #pragma GCC diagnostic pop  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent) {   const int n_items = 20;   for (int i=0; i!=n_items; ++i)   {     const double x = static_cast<double>(i % 2) * 200.0;     const double y = static_cast<double>(i / 2) * 40;     QPen pen;     pen.setWidth(i);     QtRectItem * const item = new QtRectItem;     item->setPos(x,y);     item->setPen(pen);     scene()->addItem(item);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
