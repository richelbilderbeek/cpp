

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QTreeWidgetExample4](CppQTreeWidgetExample4.htm)
===================================================================================

 

[QTreeWidgetExample4](CppQTreeWidgetExample4.htm) is an example of
[QTreeWidgetExample4](CppQTreeWidgetExample4.htm).

 

-   [View a screenshot of
    'CppQTreeWidgetExample4' (png)](CppQTreeWidgetExample4.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQTreeWidgetExample4' (zip)](CppQTreeWidgetExample4.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQTreeWidgetExample4.pro
-------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TARGET = CppQTreeWidgetExample4 TEMPLATE = app SOURCES += main.cpp HEADERS  += FORMS    += `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QApplication> #include <QDebug> #include <QDropEvent> #include <QTreeWidget> #include <QTreeWidgetItem> #include <QDesktopWidget>  struct TwoLevelsDeepTree : public QTreeWidget {   protected:   void dropEvent(QDropEvent *event)   {     QTreeWidget::dropEvent(event);     //Process all items     const int n_top = this->topLevelItemCount();     for (int i=0; i!=n_top; ++i)     {       QTreeWidgetItem * const top = this->topLevelItem(i);       //Allow dropping on top-level items       top->setFlags(           Qt::ItemIsSelectable         | Qt::ItemIsEnabled         | Qt::ItemIsEditable         | Qt::ItemIsDragEnabled         | Qt::ItemIsDropEnabled);       assert(GetDepth(top)==0);       const int n_child = top->childCount();       for (int j=0; j!=n_child; ++j)       {         assert(GetDepth(top->child(j))==1);         //Disallow dropping on non-top-level items         top->child(j)->setFlags(             Qt::ItemIsSelectable           | Qt::ItemIsEnabled           | Qt::ItemIsEditable           | Qt::ItemIsDragEnabled);       }     }   }   private:   ///Find out the depth of an item   int GetDepth(const QTreeWidgetItem * const item)   {     assert(item);     int depth = 0;     const QTreeWidgetItem * copy = item->parent();     while(copy)     {       ++depth;       copy = copy->parent();     }     return depth;   } };  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   TwoLevelsDeepTree w;    //Hide the header   w.setHeaderHidden(true);    //Add ten regular items   for (int i=0; i!=10; ++i)   {     QTreeWidgetItem * const item = new QTreeWidgetItem;     item->setText(0,"Item #" + QString::number(i+1));     //Allow the item to be edited     item->setFlags( item->flags() | Qt::ItemIsEditable);     w.addTopLevelItem(item);   }    //Let the row colors alternate   w.setAlternatingRowColors(true);    //Allow items to be drag and dropped inside of the widget   w.setDragDropMode(QAbstractItemView::InternalMove);    //Let the drag and drop be animated   w.setAnimated(true);    w.show();    //Put the QTreeWidget in the center of the screen at 25% of the screen its size   {     const QRect screen = QApplication::desktop()->screenGeometry();     w.setGeometry(0,0,screen.width() * 1 / 4 ,screen.height() * 1 / 2);     w.move( screen.center() - w.rect().center() );   }   return a.exec(); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
