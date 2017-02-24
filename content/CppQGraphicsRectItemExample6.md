



 

 

 

 

 

([C++](Cpp.md)) [QGraphicsRectItemExample6](CppQGraphicsRectItemExample6.md)
==============================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsRectItemExample6/CppQGraphicsRectItemExample6.pro
--------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += qtmain.cpp  HEADERS +=`
  -----------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample6/qtmain.cpp
-----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QApplication> #include <QGraphicsRectItem> #include <QGraphicsScene> #include <QGraphicsView>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QGraphicsScene scene;   QGraphicsView view(&scene);   view.setGeometry(100,100,400,100);    QGraphicsRectItem item;   item.setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsFocusable   );    item.setRect(-20,-10,40,20);    scene.addItem(&item);    assert(item.flags() && QGraphicsItem::ItemIsSelectable);   assert(item.flags() && QGraphicsItem::ItemIsFocusable);   assert(item.scene());   assert(item.isVisible());    assert(!item.hasFocus()); //No focus yet    item.setFocus();          //Set focus    view.show();              //Show it    //Force paint of item   {     QImage image(scene.sceneRect().size().toSize(), QImage::Format_ARGB32);     image.fill(Qt::transparent);     QPainter painter(&image);     scene.render(&painter);     image.save("tmp.png");   }    assert(item.hasFocus());  //Why does this fail?    return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
