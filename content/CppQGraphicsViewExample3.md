
 

 

 

 

 

([C++](Cpp.md)) [QGraphicsViewExample3](CppQGraphicsViewExample3.md)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQGraphicsViewExample3/CppQGraphicsViewExample3.pro
------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri) include(../../Classes/CppGrabber/CppGrabber.pri)  SOURCES += qtmain.cpp`
  ------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsViewExample3/qtmain.cpp
-------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QApplication> #include <QGraphicsView> #include <QGraphicsSimpleTextItem> #include <QTimer> #include "grabber.h" #pragma GCC diagnostic pop    int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QGraphicsScene s;   QGraphicsSimpleTextItem t;   t.setText("To be grabbed...");   t.setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsMovable);    s.addItem(&t);   QGraphicsView v(&s);   v.setGeometry(100,100,400,100);   v.show();    ribi::Grabber g(     v.winId(),     "CppQGraphicsViewExample3Screengrab.png"   );   QTimer::singleShot(100,&g,SLOT(Grab()));    return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
