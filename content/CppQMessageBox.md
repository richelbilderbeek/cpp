



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QMessageBox](CppQMessageBox.htm)
===================================================================

 

[QMessageBox](CppQMessageBox.htm) is a [Qt class](CppQtClass.htm) to
display a message box.

 

-   [View a screenshot of 'QMessageBox' (png)](CppQMessageBox.png)
-   [Download the Qt Creator project
    'QMessageBox' (zip)](CppQMessageBox.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQMessageBox.pro
-----------------------------------------------------------

 

  -----------------------------------------------------------------------------------
  ` QT       += core gui CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QMessageBox>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);      QMessageBox b;   b.setText("Hello world");   b.exec();    return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
