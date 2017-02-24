[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QPainterExample1](CppQPainterExample1.htm)
============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQPainterExample1/CppQPainterExample1.pro
--------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists (../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists (../../DesktopApplication.pri) {   QT += core   QT += gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../Libraries/boost_1_55_0   } }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQPainterExample1/main.cpp
------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QApplication> #include <QPixmap> #include <QLabel> #include <QPainter> #pragma GCC diagnostic pop  int main( int argc, char* argv[]) {   QApplication app( argc, argv );    //Create a QPixmap to show   QPixmap pixmap(256,256);   pixmap.fill( Qt::white );    //Create a QPainter to draw on the QPixmap   QPainter painter(&pixmap);   painter.setPen(Qt::black);    //Wanted to tyy out some strange floating point values   painter.drawEllipse(QPointF(126.6,126.4),124.1,123.3);    //Create a QLabel to show the QPixmap   QLabel label;   label.setPixmap(pixmap);   label.show();    return app.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
