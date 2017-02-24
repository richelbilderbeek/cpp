



 

 

 

 

 

([C++](Cpp.htm)) [QtExample1](CppQtExample1.htm)
================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)

 

[Qt example 1: moving a sprite over a background in
2D](CppQtExample1.htm) is a [Qt example](CppQtExample.htm) that shows an
image moving over a background image, like [this screenshot
(png)](CppQtExample1.png).

 

-   [Download the Qt Creator project file
    'CppQtExample1' (zip)](CppQtExample1.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQtExample1/CppQtExample1.pro
--------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists (../../ConsoleApplication.pri) {   include(../../ConsoleApplication.pri) } !exists (../../ConsoleApplication.pri) {   QT += core   QT += gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../Libraries/boost_1_55_0   } }   RESOURCES += CppQtExample1.qrc  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample1/main.cpp
------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/shared_ptr.hpp>  #include <QApplication> #include <QBitmap> #include <QGraphicsPathItem> #include <QGraphicsPixmapItem> #include <QGraphicsScene> #include <QGraphicsView> #include <QTimer> #pragma GCC diagnostic pop  struct Background : public QGraphicsPixmapItem {   explicit Background(const std::string& filename)   {     QPixmap m(filename.c_str());     this->setPixmap(m);   } };  struct TransparentSprite : public QGraphicsPixmapItem {   explicit TransparentSprite(     const std::string& filename,     const QColor& transparency_color = QColor(0,255,0)) //Lime green     : dx(1), dy(1), maxx(320), maxy(200)   {     QPixmap pixmap(filename.c_str());     const QBitmap mask = pixmap.createMaskFromColor(transparency_color);     pixmap.setMask(mask);     this->setPixmap(pixmap);   }   void advance(int)   {     int new_x = this->x();     int new_y = this->y();     new_x+=dx;     new_y+=dy;     if (new_x<0 || new_x>maxx) dx= -dx;     if (new_y<0 || new_y>maxy) dy= -dy;     this->setX(new_x);     this->setY(new_y);   }   void setRect(const int width, const int height)   {     maxx = width  - this->pixmap().width();     maxy = height - this->pixmap().height();   }   private:   int dx;   int dy;   int maxx;   int maxy; };  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QGraphicsScene s;   QGraphicsView v(&s);    //Original image from http://commons.wikimedia.org/wiki/File:Bubblegum_2.png   //by Marendo Mueller 10.05.2013, resized to 15%   Background background(":/images/Bubblegum_2.png");   s.addItem(&background);    //Image from http://commons.wikimedia.org/wiki/File:Bloem.png   //by DD21   TransparentSprite sprite(":/images/Bloem.png");   sprite.setRect(background.pixmap().width(),background.pixmap().height());    s.addItem(&sprite);    v.show();    boost::shared_ptr<QTimer> timer(new QTimer(&s));   timer->connect(timer.get(), SIGNAL(timeout()), &s, SLOT(advance()));   timer->start(10);    return a.exec(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
