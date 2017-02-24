
 

 

 

 

 

([C++](Cpp.md)) [QGraphicsItemExample2](CppQGraphicsItemExample2.md)
======================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsItemExample2/CppQGraphicsItemExample2.pro
------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  include(../../Libraries/Boost.pri)  SOURCES += qtmain.cpp`
  -----------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsItemExample2/qtmain.cpp
-------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <cassert> #include <memory>  #include <QApplication> #include <QGraphicsView> #include <QGraphicsScene> #include <QGraphicsSimpleTextItem> #include <QGraphicsSceneMouseEvent> #include <QTimer> #pragma GCC diagnostic pop   int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QGraphicsSimpleTextItem * const item_a{     new QGraphicsSimpleTextItem("A")   };   assert(item_a->pos().x() == 0.0);   assert(item_a->pos().y() == 0.0);    QGraphicsSimpleTextItem * const item_b{     new QGraphicsSimpleTextItem("B")   };   assert(item_b->pos().x() == 0.0);   assert(item_b->pos().y() == 0.0);    QGraphicsScene s;   s.addItem(item_a);   s.addItem(item_b);    QGraphicsView w;   w.setGeometry(100,100,400,100);   w.setScene(&s);    //Move item A   {     QGraphicsSceneMouseEvent * const event{new QGraphicsSceneMouseEvent};     event->setButtonDownPos(Qt::LeftButton,QPointF(0.0,0.0));     event->setPos(QPointF(100.0,100.0));     qApp->sendEvent(&item_a,event); //Compile error: QGraphicsSimpleTextItem is not a derived class of QObject   }    w.show();   a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
