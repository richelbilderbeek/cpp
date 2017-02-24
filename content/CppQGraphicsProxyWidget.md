
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QGraphicsProxyWidget](CppQGraphicsProxyWidget.md)
=====================================================================================

 

[QGraphicsProxyWidget](CppQGraphicsProxyWidget.md) is the
[class](CppClass.md) that is [returned](CppReturn.md) when a
[QWidget](CppQWidget.md) is added to a
[QGraphicsScene](CppQGraphicsScene.md). From that moment on, the
[QWidget](CppQWidget.md) can be modified in its original form, but also
by its [QGraphicsProxyWidget](CppQGraphicsProxyWidget.md), the latter
enabling for scaling and rotation.

 

-   [QGraphicsProxyWidget example
    1](CppQGraphicsProxyWidgetExample1.md):
    [screenshot (png)](CppQGraphicsProxyWidgetExample1.png), displays a
    single [QLineEdit](CppQLineEdit.md)
-   [QGraphicsProxyWidget example
    2](CppQGraphicsProxyWidgetExample2.md):
    [screenshot (png)](CppQGraphicsProxyWidgetExample2.png), displays
    multiple [QLineEdits](CppQLineEdit.md)
-   [QGraphicsProxyWidget example
    3](CppQGraphicsProxyWidgetExample3.md):
    [screenshot (png)](CppQGraphicsProxyWidgetExample3.png), multiple
    movable widgets with a window frame
-   [QGraphicsProxyWidget example
    4](CppQGraphicsProxyWidgetExample4.md):
    [screenshot (png)](CppQGraphicsProxyWidgetExample4.png), multiple
    unmovable widgets despite QGraphicsItem::ItemIsMovable flag
-   [QGraphicsProxyWidget example
    5](CppQGraphicsProxyWidgetExample5.md):
    [screenshot (png)](CppQGraphicsProxyWidgetExample5.png), multiple
    movable widgets that cannot be focused on
-   [QGraphicsProxyWidget example
    6](CppQGraphicsProxyWidgetExample6.md):
    [screenshot (png)](CppQGraphicsProxyWidgetExample6.png), multiple
    movable focusable widgets

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQGraphicsProxyWidgetExample1.pro
----------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       += gui QMAKE_CXXFLAGS += -Wextra -Werror TARGET = CppQGraphicsProxyWidgetExample1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QGraphicsProxyWidget> #include <QGraphicsScene> #include <QGraphicsView> #include <QLineEdit>  int main(int argc, char **argv) {   //Create the application   QApplication app(argc, argv);    //Create the Qt Graphics Framework components   QGraphicsScene scene;   QGraphicsView view(&scene);   view.setGeometry(100,100,400,200);   view.show();    //Create a QWidget   QLineEdit *const edit = new QLineEdit;   //Add the QWidget and obtain its proxy   QGraphicsProxyWidget * const proxy = scene.addWidget(edit);   //Modify the widget by using its proxy   proxy->setScale(2.0);   proxy->setRotation(30);    return app.exec(); } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

