

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QtExample36](CppQtExample36.htm)
==================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Qt example 36: arrows with multiple midpoints](CppQtExample36.htm) is a
[Qt example](CppQtExample.htm) elaborates on [Qt example 34: moveable,
selectable and editable arrows](CppQtExample34.htm), but has arrows with
an angle in them instead.

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQtExample36/CppQtExample36.pro
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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
