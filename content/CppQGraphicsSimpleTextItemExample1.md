[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QGraphicsSimpleTextItemExample1](CppQGraphicsSimpleTextItemExample1.htm)
==========================================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QGraphicsSimpleTextItem example 1: Hello
World](CppQGraphicsSimpleTextItemExample1.htm) is a
[QGraphicsSimpleTextItem](CppQGraphicsSimpleTextItem.htm) example that
displays multiple
[QGraphicsSimpleTextItems](CppQGraphicsSimpleTextItem.htm) with the text
'Hello World'. These items are movable and selectable.

 

-   [View a screenshot of
    'QGraphicsSimpleTextItemExample1' (png)](CppQGraphicsSimpleTextItemExample1.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'QGraphicsSimpleTextItemExample1' (zip)](CppQGraphicsSimpleTextItemExample1.zip)
-   ![Windows](PicWindows.png) [Download a Windows executable of
    'QGraphicsSimpleTextItemExample1' (zip)](CppQGraphicsSimpleTextItemExample1Exe.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQGraphicsSimpleTextItemExample1/CppQGraphicsSimpleTextItemExample1.pro
--------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  include(../../Libraries/Boost.pri)  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qttextitem.cpp  HEADERS += \     qtwidget.h \     qttextitem.h`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample1/qtmain.cpp
-----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample1/qttextitem.h
-------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTTEXTITEM_H #define QTTEXTITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsSimpleTextItem> #pragma GCC diagnostic pop  struct QtTextItem : public QGraphicsSimpleTextItem {   QtTextItem(QGraphicsItem *parent = 0); };  #endif // QTTEXTITEM_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample1/qttextitem.cpp
---------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qttextitem.h"  QtTextItem::QtTextItem(QGraphicsItem *parent)  : QGraphicsSimpleTextItem(parent) {   this->setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsMovable);    this->setText("Hello World"); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample1/qtwidget.h
-----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsView> #pragma GCC diagnostic pop  ///The widget holding the items struct QtWidget : public QGraphicsView {   QtWidget(QWidget *parent = 0); };  #endif // QTWIDGET_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample1/qtwidget.cpp
-------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtwidget.h"  #include <cassert> #include <cmath> #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/math/constants/constants.hpp> #include <QGraphicsScene> #include "qttextitem.h" #pragma GCC diagnostic pop  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent) {   const int n_items = 16;   for (int i=0; i!=n_items; ++i)   {     const double angle       = boost::math::constants::two_pi<double>()       * (static_cast<double>(i+0) / static_cast<double>(n_items));     const double ray = 150.0;     const double x =  std::sin(angle) * ray;     const double y = -std::cos(angle) * ray;      QtTextItem * const item = new QtTextItem;     item->setPos(x,y);     scene()->addItem(item);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
