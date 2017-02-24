

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QGraphicsSimpleTextItemExample8](CppQGraphicsSimpleTextItemExample8.htm)
==========================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQGraphicsSimpleTextItemExample8/CppQGraphicsSimpleTextItemExample8.pro
--------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += qtmain.cpp`
  -----------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample8/qtmain.cpp
-----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QApplication> #include <QGraphicsView> #include <QGraphicsSimpleTextItem>  struct MyBoundedTextItem : public QGraphicsSimpleTextItem {   MyBoundedTextItem(const std::string& s)   {     this->setText(s.c_str());   }   void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget)   {     QGraphicsSimpleTextItem::paint(painter,option,widget);     painter->setBrush(QBrush(QColor(0,0,0,0)));     painter->drawRect(this->boundingRect().adjusted(1.0,1.0,-1.0,-1.0));   } };  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QGraphicsScene scene;   QGraphicsView view(&scene);   view.setGeometry(0,28,480,100);    MyBoundedTextItem item("CppQGraphicsSimpleTextItemExample8");   item.setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsFocusable   );    scene.addItem(&item);   view.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
