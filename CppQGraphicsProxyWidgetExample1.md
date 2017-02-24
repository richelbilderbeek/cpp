[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QGraphicsProxyWidget example 1](CppQGraphicsProxyWidgetExample1.htm)
=======================================================================================================

 

[QGraphicsProxyWidget example 1](CppQGraphicsProxyWidgetExample1.htm) is
a [QGraphicsProxyWidget](CppQGraphicsProxyWidget.htm) example.

 

-   ![Lubuntu](PicLubuntu.png) [View a screenshot of
    'CppQGraphicsProxyWidgetExample1' (png)](CppQGraphicsProxyWidgetExample1.png)
-   ![Wine](PicWine.png) [View a screenshot of
    'CppQGraphicsProxyWidgetExample1' (png)](CppQGraphicsProxyWidgetExample1Wine.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsProxyWidgetExample1' (zip)](CppQGraphicsProxyWidgetExample1.zip)
-   ![Windows](PicWindows.png) [Download the Windows executable of
    'CppQGraphicsProxyWidgetExample1' (zip)](CppQGraphicsProxyWidgetExample1Exe.zip)

 

 

 

 

 

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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
