



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QGraphicsProxyWidget](CppQGraphicsProxyWidget.htm)
=====================================================================================

 

[QGraphicsProxyWidget](CppQGraphicsProxyWidget.htm) is the
[class](CppClass.htm) that is [returned](CppReturn.htm) when a
[QWidget](CppQWidget.htm) is added to a
[QGraphicsScene](CppQGraphicsScene.htm). From that moment on, the
[QWidget](CppQWidget.htm) can be modified in its original form, but also
by its [QGraphicsProxyWidget](CppQGraphicsProxyWidget.htm), the latter
enabling for scaling and rotation.

 

-   [QGraphicsProxyWidget example
    1](CppQGraphicsProxyWidgetExample1.htm):
    [screenshot (png)](CppQGraphicsProxyWidgetExample1.png), displays a
    single [QLineEdit](CppQLineEdit.htm)
-   [QGraphicsProxyWidget example
    2](CppQGraphicsProxyWidgetExample2.htm):
    [screenshot (png)](CppQGraphicsProxyWidgetExample2.png), displays
    multiple [QLineEdits](CppQLineEdit.htm)
-   [QGraphicsProxyWidget example
    3](CppQGraphicsProxyWidgetExample3.htm):
    [screenshot (png)](CppQGraphicsProxyWidgetExample3.png), multiple
    movable widgets with a window frame
-   [QGraphicsProxyWidget example
    4](CppQGraphicsProxyWidgetExample4.htm):
    [screenshot (png)](CppQGraphicsProxyWidgetExample4.png), multiple
    unmovable widgets despite QGraphicsItem::ItemIsMovable flag
-   [QGraphicsProxyWidget example
    5](CppQGraphicsProxyWidgetExample5.htm):
    [screenshot (png)](CppQGraphicsProxyWidgetExample5.png), multiple
    movable widgets that cannot be focused on
-   [QGraphicsProxyWidget example
    6](CppQGraphicsProxyWidgetExample6.htm):
    [screenshot (png)](CppQGraphicsProxyWidgetExample6.png), multiple
    movable focusable widgets

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQGraphicsProxyWidgetExample1.pro
----------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       += gui QMAKE_CXXFLAGS += -Wextra -Werror TARGET = CppQGraphicsProxyWidgetExample1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QGraphicsProxyWidget> #include <QGraphicsScene> #include <QGraphicsView> #include <QLineEdit>  int main(int argc, char **argv) {   //Create the application   QApplication app(argc, argv);    //Create the Qt Graphics Framework components   QGraphicsScene scene;   QGraphicsView view(&scene);   view.setGeometry(100,100,400,200);   view.show();    //Create a QWidget   QLineEdit *const edit = new QLineEdit;   //Add the QWidget and obtain its proxy   QGraphicsProxyWidget * const proxy = scene.addWidget(edit);   //Modify the widget by using its proxy   proxy->setScale(2.0);   proxy->setRotation(30);    return app.exec(); } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
