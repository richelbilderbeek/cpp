
 

 

 

 

 

([C++](Cpp.md)) [QGraphicsSimpleTextItemExample8](CppQGraphicsSimpleTextItemExample8.md)
==========================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsSimpleTextItemExample8/CppQGraphicsSimpleTextItemExample8.pro
--------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += qtmain.cpp`
  -----------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample8/qtmain.cpp
-----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QApplication> #include <QGraphicsView> #include <QGraphicsSimpleTextItem>  struct MyBoundedTextItem : public QGraphicsSimpleTextItem {   MyBoundedTextItem(const std::string& s)   {     this->setText(s.c_str());   }   void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget)   {     QGraphicsSimpleTextItem::paint(painter,option,widget);     painter->setBrush(QBrush(QColor(0,0,0,0)));     painter->drawRect(this->boundingRect().adjusted(1.0,1.0,-1.0,-1.0));   } };  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QGraphicsScene scene;   QGraphicsView view(&scene);   view.setGeometry(0,28,480,100);    MyBoundedTextItem item("CppQGraphicsSimpleTextItemExample8");   item.setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsFocusable   );    scene.addItem(&item);   view.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

