[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QGraphicsProxyWidget example 5](CppQGraphicsProxyWidgetExample5.htm)
=======================================================================================================

 

[QGraphicsProxyWidget example 5](CppQGraphicsProxyWidgetExample5.htm) is
a [QGraphicsProxyWidget](CppQGraphicsProxyWidget.htm) example.

 

The final goal is to be able to move the MyItem, even when MyItem has a
focusable QLineEdit. This example is the first step in reaching this
goal. This is accomplished by letting the original QWidget emit a signal
on a mouse press. The QGraphicsView looks up the QGraphicsProxyWidget
corresponding to the MyItem and let it follow the mouse cursor. Note
that the QLineEdit is disabled: when enabling it, after the first time
focus is given to a QLineEdit, it never releases it. Yet...

 

-   ![Lubuntu](PicLubuntu.png) [View a screenshot of
    'CppQGraphicsProxyWidgetExample5' (png)](CppQGraphicsProxyWidgetExample5.png)
-   ![Wine](PicWine.png) [View a screenshot of
    'CppQGraphicsProxyWidgetExample5' (png)](CppQGraphicsProxyWidgetExample5Wine.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppQGraphicsProxyWidgetExample5' (zip)](CppQGraphicsProxyWidgetExample5.zip)
-   ![Windows](PicWindows.png) [Download the Windows executable of
    'CppQGraphicsProxyWidgetExample5' (zip)](CppQGraphicsProxyWidgetExample5Exe.zip)

 

 

 

 

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQGraphicsProxyWidgetExample5.pro
----------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       += gui QMAKE_CXXFLAGS += -Wextra -Werror -std=c++11 TARGET = CppQGraphicsProxyWidgetExample5 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath> #include <QApplication> #include <QDesktopWidget> #include <QGraphicsProxyWidget> #include <QGraphicsScene> #include <QGraphicsView> #include <QLineEdit> #include <QLabel> #include <QVBoxLayout> #include <QDialog> #include <QGraphicsSceneMouseEvent> #include <boost/signals2.hpp>  struct MyItem : public QWidget {   MyItem(QWidget *parent = 0, Qt::WindowFlags f = 0)     : QWidget(parent,f),       m_edit(new QLineEdit(this)),       m_label(new QLabel(this))   {     assert(!this->layout());     QVBoxLayout * const layout = new QVBoxLayout(this);     this->setLayout(layout);     layout->addWidget(m_label);     layout->addWidget(m_edit);     m_edit->setEnabled(false);   }   QLineEdit * const m_edit;   QLabel * const m_label;   boost::signals2::signal<void (MyItem*)> m_signal_mouse_press;   protected:   void mousePressEvent(QMouseEvent * event)   {     m_signal_mouse_press(this);     QWidget::mousePressEvent(event);   } };  struct MyView : public QGraphicsView {   MyView(QWidget *parent = 0)     : QGraphicsView(parent),       m_scene(new QGraphicsScene(this)),       m_drag_item(nullptr)   {     this->setScene(m_scene);      //Create the QLineEdit instances     const int sz = 10;     std::vector<QGraphicsProxyWidget *> proxies;     for (int i=0; i!=sz; ++i)     {       MyItem * const item = new MyItem;       item->setGeometry(0,0,100,22);       item->m_label->setText(QString("#") + QString::number(i));       item->m_edit->setText(QString("Text ") + QString::number(i));       item->m_signal_mouse_press.connect(         boost::bind(           &MyView::OnMousePress,           this,_1)); //_1 because the signal contains an argument       //Add the QWidget and obtain its proxy       QGraphicsProxyWidget * const proxy = m_scene->addWidget(item);       proxies.push_back(proxy);       m_m[item] = proxy;     }      const double ray = 200.0; //pixels     for (int i=0; i!=sz; ++i)     {       const double angle = 2.0 * M_PI * static_cast<double>(i) / static_cast<double>(sz);       const int x = static_cast<int>(0.0 + (std::sin(angle) * ray));       const int y = static_cast<int>(0.0 - (std::cos(angle) * ray));       QGraphicsProxyWidget * const proxy = proxies[i];       proxy->setRotation(angle * 360.0 / (2.0 * M_PI));       proxy->setPos(x,y);       proxy->setFlag(QGraphicsItem::ItemIsMovable,true); //No need to set this flag     }   }   //My own added method   void OnMousePress(MyItem * item)   {     assert(item);     m_drag_item = item;     item->m_edit->setText("Gotcha!");   }   void mouseMoveEvent(QMouseEvent *event)   {     if (m_drag_item)     {       //Convert the position clicked to the QGraphicsView coordinat       QPointF p = this->mapToScene(event->pos());       //Let the       m_m[m_drag_item]->setPos(p);     }   }   void mouseReleaseEvent(QMouseEvent *)   {     m_drag_item = nullptr;   }   QGraphicsScene * const m_scene;   MyItem * m_drag_item;   std::map<MyItem *,QGraphicsProxyWidget *> m_m; };  int main(int argc, char **argv) {   //Create the application   QApplication app(argc, argv);   MyView view;   view.setGeometry(0,0,800,600);   {     //Put the dialog in the screen center     const QRect screen = QApplication::desktop()->screenGeometry();     view.move( screen.center() - view.rect().center() );   }   view.show();   return app.exec(); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
