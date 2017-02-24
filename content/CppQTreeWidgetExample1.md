



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QTreeWidgetExample1](CppQTreeWidgetExample1.htm)
===================================================================================

 

[QTreeWidgetExample1](CppQTreeWidgetExample1.htm) is an example of
[QTreeWidgetExample1](CppQTreeWidgetExample1.htm).

 

-   [View a screenshot of
    'CppQTreeWidgetExample1' (png)](CppQTreeWidgetExample1.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQTreeWidgetExample1' (zip)](CppQTreeWidgetExample1.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQTreeWidgetExample1.pro
-------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TARGET = CppQTreeWidgetExample1 TEMPLATE = app SOURCES += main.cpp HEADERS  += FORMS    += `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QTreeWidget> #include <QTreeWidgetItem>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QTreeWidget w;   w.show();   return a.exec(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
