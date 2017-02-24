



 

 

 

 

 

([C++](Cpp.md)) [QGraphicsItemExample1](CppQGraphicsItemExample1.md)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsItemExample1/CppQGraphicsItemExample1.pro
------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  include(../../Libraries/Boost.pri)  SOURCES += qtmain.cpp`
  -----------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsItemExample1/qtmain.cpp
-------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <memory>  #include <QApplication> #include <QGraphicsView> #include <QGraphicsScene> #include <QGraphicsSimpleTextItem> #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    const std::shared_ptr<QGraphicsItem> item{     std::make_shared<QGraphicsSimpleTextItem>("CppQGraphicsItemExample1")   };    QGraphicsScene s;   s.addItem(item.get());    QGraphicsView w;   w.setGeometry(100,100,400,100);   w.setScene(&s);    //item->dragEnterEvent(nullptr); //protected   //item->dragMoveEvent(nullptr);  //protected   //item->dragLeaveEvent(nullptr); //protected    w.show();   a.exec();    //Prevent QGraphicsScene from deleting item (let item be deleted by std::shared_ptr instead)   s.removeItem(item.get()); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
