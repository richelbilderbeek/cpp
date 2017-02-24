

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QtExample26](CppQtExample26.htm)
==================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)

 

[Qt example 26: create a text positioning widget](CppQtExample26.htm) is
an elaboration of [Qt example 24: create a simple text positioning
widget](CppQtExample24.htm). This [Qt Example](CppQtExample.htm) that
uses [QGraphicsView](CppQGraphicsView.htm) to create a simple text
positioning [widget](CppWidget.htm): in the
[constructor](CppConstructor.htm) the different
[std::strings](CppStdString.htm) are specified, upon which the
[widget](CppWidget.htm) puts these overlapping in the center. Then, the
[std::strings](CppStdString.htm) can dragged.

 

 

 

 

 

Downloads
---------

 

-   [Download the source code for Qt example
    26 (zip)](CppQtExample26.zip)
-   [View a screenshot of Qt example 26 (png)](CppQtExample26.png)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQtExample26/CppQtExample26.pro
----------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists(../../DesktopApplication.pri) {   QT += core gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   TEMPLATE = app    CONFIG(debug, debug|release) {     message(Debug mode)   }    CONFIG(release, debug|release) {     message(Release mode)     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }    QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra    unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../../Projects/Libraries/boost_1_55_0   } }  SOURCES += \     qtmain.cpp \     tooltesttextpositionwidgetdialog.cpp \     qttextpositionwidget.cpp \     qttextpositionitem.cpp  HEADERS += \     tooltesttextpositionwidgetdialog.h \     qttextpositionwidget.h \     qttextpositionitem.h  FORMS += tooltesttextpositionwidgetdialog.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample26/qtmain.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QApplication> #include "tooltesttextpositionwidgetdialog.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   ToolTestTextPositionWidgetDialog w;   w.show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample26/qttextpositionitem.h
-------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTTEXTPOSITIONITEM_H #define QTTEXTPOSITIONITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsItem> #pragma GCC diagnostic pop  struct QtTextPositionItem : public QGraphicsItem {   ///Constructor of QtTextPositionItem   QtTextPositionItem(     const std::string& text,     QGraphicsItem *parent = 0   );   QtTextPositionItem(const QtTextPositionItem&) = delete;   QtTextPositionItem& operator=(const QtTextPositionItem&) = delete;   ~QtTextPositionItem() noexcept {}    protected:   ///Paint a QtTextPositionItem   void paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *);    ///The rectangle that determines the edges of the QtTextPositionItem   QRectF boundingRect() const;    ///The text to display   const std::string m_text;   ///The rectangle the text is in   const QRectF m_rect; };  #endif // QTTEXTPOSITIONITEM_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample26/qttextpositionitem.cpp
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QCursor> #include <QFont> #include <QGraphicsSceneMouseEvent> #include <QPainter> #include "qttextpositionitem.h" #pragma GCC diagnostic pop  QtTextPositionItem::QtTextPositionItem(   const std::string& text,   QGraphicsItem *parent)   : QGraphicsItem(parent),     m_text(text),     //Add a margin of 2 pixels at the edges     m_rect(       -2,       -2,       //For a pixels size of 13, the characters will be 8 pixels wide       4 + (8 * static_cast<int>(text.size())),       //For a pixels size of 13, the characters will be 13 pixels high       4 + 13)  {   this->setFlags(ItemIsMovable); }  QRectF QtTextPositionItem::boundingRect() const {   return m_rect; }  void QtTextPositionItem::paint(   QPainter *painter,   const QStyleOptionGraphicsItem * /*option*/,   QWidget * /*widget*/ ) {   QFont font;   font.setFamily("monospace");   font.setPixelSize(13);   painter->setFont(font);   painter->setBrush(QBrush(QColor(228,228,228)));   painter->drawRect(m_rect);   //Use a margin of 2 around the edges   painter->drawText(m_rect.adjusted(2,2,-2,-2),m_text.c_str()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample26/qttextpositionwidget.h
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTTEXTPOSITIONWIDGET_H #define QTTEXTPOSITIONWIDGET_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsView> #pragma GCC diagnostic pop  struct QtTextPositionWidget : public QGraphicsView {   QtTextPositionWidget(const std::vector<std::string>& items); };  #endif // QTTEXTPOSITIONWIDGET_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample26/qttextpositionwidget.cpp
-----------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QGraphicsScene> #include <QGraphicsPixmapItem> #include "qttextpositionitem.h" #include "qttextpositionwidget.h" #pragma GCC diagnostic pop  QtTextPositionWidget::QtTextPositionWidget(const std::vector<std::string>& items) {   QGraphicsScene * const scene = new QGraphicsScene(this);   this->setScene(scene);    std::for_each(items.begin(),items.end(),     [this,scene](const std::string& s)     {       QtTextPositionItem * item = new QtTextPositionItem(s);       //Scatter those items around a bit       item->setPos(         (this->width()  / 2.0) - 64 + (std::rand() % 128),         (this->height() / 2.0) - 64 + (std::rand() % 128));        scene->addItem(item);     }   ); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample26/tooltesttextpositionwidgetdialog.h
---------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef TOOLTESTTEXTPOSITIONWIDGETDIALOG_H #define TOOLTESTTEXTPOSITIONWIDGETDIALOG_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QDialog> #pragma GCC diagnostic pop  namespace Ui { class ToolTestTextPositionWidgetDialog; }  class ToolTestTextPositionWidgetDialog : public QDialog {   Q_OBJECT      public:   explicit ToolTestTextPositionWidgetDialog(QWidget *parent = 0);   ~ToolTestTextPositionWidgetDialog();      private:   Ui::ToolTestTextPositionWidgetDialog *ui; };  #endif // TOOLTESTTEXTPOSITIONWIDGETDIALOG_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample26/tooltesttextpositionwidgetdialog.cpp
-----------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include "qttextpositionwidget.h" #include "tooltesttextpositionwidgetdialog.h" #include "ui_tooltesttextpositionwidgetdialog.h" #pragma GCC diagnostic pop  ToolTestTextPositionWidgetDialog::ToolTestTextPositionWidgetDialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::ToolTestTextPositionWidgetDialog) {   ui->setupUi(this);   ui->layout->addWidget(     new QtTextPositionWidget(       {        "Alpha",        "Beta",        "Gamma",        "Delta",        "Epsilon",        "Eta"       }     )   ); }  ToolTestTextPositionWidgetDialog::~ToolTestTextPositionWidgetDialog() {   delete ui; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
