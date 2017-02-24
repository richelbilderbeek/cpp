



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QMessageBox](CppQMessageBox.md)
===================================================================

 

[QMessageBox](CppQMessageBox.md) is a [Qt class](CppQtClass.md) to
display a message box.

 

-   [View a screenshot of 'QMessageBox' (png)](CppQMessageBox.png)
-   [Download the Qt Creator project
    'QMessageBox' (zip)](CppQMessageBox.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQMessageBox.pro
-----------------------------------------------------------

 

  -----------------------------------------------------------------------------------
  ` QT       += core gui CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QMessageBox>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);      QMessageBox b;   b.setText("Hello world");   b.exec();    return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
