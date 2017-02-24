

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QGraphicsRectItemExample6](CppQGraphicsRectItemExample6.htm)
==============================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQGraphicsRectItemExample6/CppQGraphicsRectItemExample6.pro
--------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += qtmain.cpp  HEADERS +=`
  -----------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsRectItemExample6/qtmain.cpp
-----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QApplication> #include <QGraphicsRectItem> #include <QGraphicsScene> #include <QGraphicsView>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QGraphicsScene scene;   QGraphicsView view(&scene);   view.setGeometry(100,100,400,100);    QGraphicsRectItem item;   item.setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsFocusable   );    item.setRect(-20,-10,40,20);    scene.addItem(&item);    assert(item.flags() && QGraphicsItem::ItemIsSelectable);   assert(item.flags() && QGraphicsItem::ItemIsFocusable);   assert(item.scene());   assert(item.isVisible());    assert(!item.hasFocus()); //No focus yet    item.setFocus();          //Set focus    view.show();              //Show it    //Force paint of item   {     QImage image(scene.sceneRect().size().toSize(), QImage::Format_ARGB32);     image.fill(Qt::transparent);     QPainter painter(&image);     scene.render(&painter);     image.save("tmp.png");   }    assert(item.hasFocus());  //Why does this fail?    return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
