



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QTreeWidgetExample3](CppQTreeWidgetExample3.htm)
===================================================================================

 

[QTreeWidgetExample3](CppQTreeWidgetExample3.htm) is an example of
[QTreeWidgetExample3](CppQTreeWidgetExample3.htm).

 

-   [View a screenshot of
    'CppQTreeWidgetExample3' (png)](CppQTreeWidgetExample3.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQTreeWidgetExample3' (zip)](CppQTreeWidgetExample3.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQTreeWidgetExample3.pro
-------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TARGET = CppQTreeWidgetExample3 TEMPLATE = app SOURCES += main.cpp HEADERS  += FORMS    += `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QTreeWidget> #include <QTreeWidgetItem> #include <QDesktopWidget> int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QTreeWidget w;     //Hide the header   w.setHeaderHidden(true);    //Add non-editable non-movable item that cannot have children   {     QTreeWidgetItem * const item = new QTreeWidgetItem;     item->setText(0,"Title");     item->setFlags(Qt::ItemIsEnabled);     w.addTopLevelItem(item);   }    //Add two non-editable non-movable item that can have children   for (int i=0; i!=2; ++i)   {     QTreeWidgetItem * const item = new QTreeWidgetItem;     item->setText(0,"Header #" + QString::number(i+1));     item->setFlags(Qt::ItemIsEnabled | Qt::ItemIsDropEnabled);     w.addTopLevelItem(item);   }    //Add five regular items   for (int i=0; i!=5; ++i)   {     QTreeWidgetItem * const item = new QTreeWidgetItem;     item->setText(0,"Item #" + QString::number(i+1));     //Allow the item to be edited     item->setFlags( item->flags() | Qt::ItemIsEditable);     w.addTopLevelItem(item);   }       //Let the row colors alternate   w.setAlternatingRowColors(true);    //Allow items to be drag and dropped inside of the widget   w.setDragDropMode(QAbstractItemView::InternalMove);    //Let the drag and drop be animated   w.setAnimated(true);    w.show();    //Put the QTreeWidget in the center of the screen at 25% of the screen its size   {     const QRect screen = QApplication::desktop()->screenGeometry();     w.setGeometry(0,0,screen.width() * 1 / 4 ,screen.height() * 1 / 4);     w.move( screen.center() - w.rect().center() );   }   return a.exec(); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
