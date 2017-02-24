
 

 

 

 

 

([C++](Cpp.md)) [QTreeWidgetExample6](CppQTreeWidgetExample6.md)
==================================================================

 

[QTreeWidgetExample6](CppQTreeWidgetExample6.md) is an example of
[QTreeWidgetExample6](CppQTreeWidgetExample6.md).

 

-   [View a screenshot of
    'CppQTreeWidgetExample6' (png)](CppQTreeWidgetExample6.png)
-   [Download the Qt Creator project
    'CppQTreeWidgetExample6' (zip)](CppQTreeWidgetExample6.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQTreeWidgetExample6.pro
-------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TARGET = CppQTreeWidgetExample6 TEMPLATE = app SOURCES += main.cpp HEADERS  += FORMS    += `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDesktopWidget> #include <QTreeWidget> #include <QTreeWidgetItem>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QTreeWidget w;    //Hide the header   w.setHeaderHidden(true);    //Add five top items, with nth-1 children   for (int i=0; i!=5; ++i)   {     QTreeWidgetItem * const top_item = new QTreeWidgetItem;     top_item->setText(0,QString::number(i));     for (int j=0; j!=4-i; ++j)     {       QTreeWidgetItem * const child_item = new QTreeWidgetItem;       child_item->setText(0,QString::number(i) + "-" + QString::number(j));       top_item->addChild(child_item);     }     w.addTopLevelItem(top_item);     top_item->setExpanded(true);   }    //Let the row colors alternate   w.setAlternatingRowColors(true);    //Put the QTreeWidget in the center of the screen at 25% of the screen its size   {     const QRect screen = QApplication::desktop()->screenGeometry();     w.setGeometry(0,0,screen.width() * 1 / 5 ,screen.height() * 1 / 3);     w.move( screen.center() - w.rect().center() );   }   w.show();    return a.exec(); } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
