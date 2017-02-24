

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QGraphicsProxyWidget eexample 4](CppQGraphicsProxyWidgetExample4.htm)
========================================================================================================

 

[QGraphicsProxyWidget example 4](CppQGraphicsProxyWidgetExample4.htm) is
a [QGraphicsProxyWidget](CppQGraphicsProxyWidget.htm) example.

 

-   ![Lubuntu](PicLubuntu.png) [View a screenshot of
    'CppQGraphicsProxyWidgetExample4' (png)](CppQGraphicsProxyWidgetExample4.png)
-   ![Wine](PicWine.png) [View a screenshot of
    'CppQGraphicsProxyWidgetExample4' (png)](CppQGraphicsProxyWidgetExample4Wine.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsProxyWidgetExample4' (zip)](CppQGraphicsProxyWidgetExample4.zip)
-   ![Windows](PicWindows.png) [Download the Windows executable of
    'CppQGraphicsProxyWidgetExample4' (zip)](CppQGraphicsProxyWidgetExample4Exe.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQGraphicsProxyWidgetExample4.pro
----------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       += gui QMAKE_CXXFLAGS += -Wextra -Werror TARGET = CppQGraphicsProxyWidgetExample4 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath> #include <QApplication> #include <QDesktopWidget> #include <QGraphicsProxyWidget> #include <QGraphicsScene> #include <QGraphicsView> #include <QLineEdit> #include <QLabel> #include <QVBoxLayout> #include <QDialog> #include <QGraphicsSceneMouseEvent> #include <QPointer>  struct MyItem : public QWidget {   MyItem(QWidget *parent = 0, Qt::WindowFlags f = 0)     : QWidget(parent,f),       m_edit(new QLineEdit(this)),       m_label(new QLabel(this))   {     assert(!this->layout());     QVBoxLayout * const layout = new QVBoxLayout(this);     this->setLayout(layout);     layout->addWidget(m_label);     layout->addWidget(m_edit);   }   QLineEdit * const m_edit;   QLabel * const m_label; };  struct MyView : public QGraphicsView {   MyView(QWidget *parent = 0)     : QGraphicsView(parent),       m_scene(new QGraphicsScene(this))   {     this->setScene(m_scene);      //Create the QLineEdit instances     const int sz = 10;     std::vector<QGraphicsProxyWidget *> proxies;     for (int i=0; i!=sz; ++i)     {       MyItem * const mywidget = new MyItem;       mywidget->setGeometry(0,0,64,22);       mywidget->m_label->setText(QString("#") + QString::number(i));       mywidget->m_edit->setText(QString("Text ") + QString::number(i));       //Add the QWidget and obtain its proxy       QGraphicsProxyWidget * const proxy = m_scene->addWidget(mywidget);       proxies.push_back(proxy);     }      const double ray = 150.0; //pixels     for (int i=0; i!=sz; ++i)     {       const double angle = 2.0 * M_PI * static_cast<double>(i) / static_cast<double>(sz);       const int x = static_cast<int>(0.0 + (std::sin(angle) * ray));       const int y = static_cast<int>(0.0 - (std::cos(angle) * ray));       QGraphicsProxyWidget * const proxy = proxies[i];       proxy->setRotation(angle * 360.0 / (2.0 * M_PI));       proxy->setPos(x,y);       proxy->setFlag(QGraphicsItem::ItemIsMovable,true); //No need to set this flag     }   }   QGraphicsScene * const m_scene; };  int main(int argc, char **argv) {   //Create the application   QApplication app(argc, argv);   MyView view;   view.setGeometry(0,0,600,400);   {     //Put the dialog in the screen center     const QRect screen = QApplication::desktop()->screenGeometry();     view.move( screen.center() - view.rect().center() );   }   view.show();   return app.exec(); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
