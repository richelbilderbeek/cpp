
 

 

 

 

 

([C++](Cpp.md)) [QtExample36](CppQtExample36.md)
==================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Qt example 36: arrows with multiple midpoints](CppQtExample36.md) is a
[Qt example](CppQtExample.md) elaborates on [Qt example 34: moveable,
selectable and editable arrows](CppQtExample34.md), but has arrows with
an angle in them instead.

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQtExample36/CppQtExample36.pro
----------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app  SOURCES += main.cpp \     gamewidget.cpp  HEADERS  += \     gamewidget.h  FORMS    +=  RESOURCES += \     CppQtExample36.qrc`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample36/gamewidget.h
-----------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef GAMEWIDGET_H #define GAMEWIDGET_H  #include <QWidget>  class GameWidget : public QWidget {   Q_OBJECT    public:   GameWidget();   void paintEvent(QPaintEvent *);    private:   int m_x;   int m_y;    private slots:   ///Responds to internal QTimer   void OnTimer(); };  #endif // GAMEWIDGET_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample36/gamewidget.cpp
-------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "gamewidget.h"  #include <QBrush> #include <QColor> #include <QDialog> #include <QPainter> #include <QTimer>  GameWidget::GameWidget() : m_x(0), m_y(0) {   ///Create the heartbeat of the program   QTimer * const timer = new QTimer(this);   QObject::connect(timer,SIGNAL(timeout()),this,SLOT(OnTimer()));   timer->setInterval(20);   timer->start(); }  void GameWidget::OnTimer() {   ++m_x;   ++m_y;   this->repaint();   if (m_x > 256) { m_x = 0; m_y = 0; } }  void GameWidget::paintEvent(QPaintEvent *) {   QPainter painter(this);   QPixmap pixmap(":/PicBeer.png");   painter.drawPixmap(this->rect(),pixmap);   painter.drawPixmap(100-m_x    ,100+m_y    ,120,120,pixmap);   painter.drawPixmap(100-m_x+100,100-m_y    ,120,120,pixmap);   painter.drawPixmap(100+m_x    ,100+m_y+100,120,120,pixmap);   painter.drawPixmap(100+m_x+100,100-m_y+100,120,120,pixmap); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample36/main.cpp
-------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication>  #include "gamewidget.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   GameWidget w;   w.show();     return a.exec(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
