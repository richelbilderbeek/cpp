[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QGraphicsSimpleTextItemExample6](CppQGraphicsSimpleTextItemExample6.htm)
==========================================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QGraphicsSimpleTextItem example 6: remote
texting](CppQGraphicsSimpleTextItemExample6.htm) is a
[QGraphicsSimpleTextItem](CppQGraphicsSimpleTextItem.htm) example that
displays multiple
[QGraphicsSimpleTextItems](CppQGraphicsSimpleTextItem.htm) with a text
that changes in time. These items, however, are not modified themselves:
they are updated with a [boost::signal2](CppBoostSignal.htm).

 

-   [View a screenshot of
    'QGraphicsSimpleTextItemExample6' (png)](CppQGraphicsSimpleTextItemExample6.png)
-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'QGraphicsSimpleTextItemExample6' (zip)](CppQGraphicsSimpleTextItemExample6.zip)
-   ![Windows](PicWindows.png) [Download a Windows executable of
    'QGraphicsSimpleTextItemExample6' (zip)](CppQGraphicsSimpleTextItemExample6Exe.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQGraphicsSimpleTextItemExample6/CppQGraphicsSimpleTextItemExample6.pro
--------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists(../../DesktopApplication.pri) {   QT       += core gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets    win32 {     greaterThan(QT_MAJOR_VERSION, 4): QT += svg   }    TEMPLATE = app    CONFIG(debug, debug|release) {     message(Debug mode)   }    CONFIG(release, debug|release) {     message(Release mode)     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }    QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++    unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   INCLUDEPATH += \     ../../Libraries/boost_1_55_0 }  SOURCES += \     qtmain.cpp \     qtwidget.cpp \     qttextitem.cpp \     text.cpp  HEADERS += \     qtwidget.h \     qttextitem.h \     text.h`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample6/qtmain.cpp
-----------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-variable" #include <QApplication> #include <QDesktopWidget> #include "qtwidget.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtWidget w;   {     //Resize the dialog and put it in the screen center     w.setGeometry(0,0,600,400);     const QRect screen = QApplication::desktop()->screenGeometry();     w.move( screen.center() - w.rect().center() );   }   w.show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample6/qttextitem.h
-------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTTEXTITEM_H #define QTTEXTITEM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-variable" #include <boost/shared_ptr.hpp> #include <QGraphicsSimpleTextItem> #pragma GCC diagnostic pop  struct Text;  struct QtTextItem : public QGraphicsSimpleTextItem {   QtTextItem(const boost::shared_ptr<const Text> text,     QGraphicsItem *parent = 0   );    private:   ///Read-only Text   const boost::shared_ptr<const Text> m_text;    //Respond to a change of Text   void OnTextChanged(); };  #endif // QTTEXTITEM_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample6/qttextitem.cpp
---------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-variable" #include "qttextitem.h"  #include <cassert> #include "text.h" #pragma GCC diagnostic pop  QtTextItem::QtTextItem(   const boost::shared_ptr<const Text> text,   QGraphicsItem *parent ) : QGraphicsSimpleTextItem(parent),     m_text(text) {   this->setFlags(       QGraphicsItem::ItemIsSelectable     | QGraphicsItem::ItemIsMovable);    m_text->m_signal_text_changed.connect(     boost::bind(&QtTextItem::OnTextChanged,this));    this->setText(m_text->GetText().c_str()); }  void QtTextItem::OnTextChanged() {   this->setText(m_text->GetText().c_str());   //this->update(); //No need to }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample6/qtwidget.h
-----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #include <vector>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-variable" #include <boost/shared_ptr.hpp> #include <QGraphicsView> #pragma GCC diagnostic pop  struct Text;  ///The widget holding the items ///Must be a Q_OBJECT for slots to work class QtWidget : public QGraphicsView {   Q_OBJECT    public:   QtWidget(QWidget *parent = 0);    private slots:   void OnTimer();    private:   std::vector<boost::shared_ptr<Text> > m_texts; };  #endif // QTWIDGET_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample6/qtwidget.cpp
-------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtwidget.h"  #include <cassert> #include <cmath> #include <sstream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-variable" #include <boost/math/constants/constants.hpp>  #include <QGraphicsScene> #include <QTimer> #include "qttextitem.h" #include "text.h" #pragma GCC diagnostic pop  QtWidget::QtWidget(QWidget *parent)   : QGraphicsView(new QGraphicsScene,parent),     m_texts{} {   const int n_items = 16;   //Create the Texts   for (int i=0; i!=n_items; ++i)   {     boost::shared_ptr<Text> text(new Text("*"));     m_texts.push_back(text);   }   //Create the QtTextItems   for (int i=0; i!=n_items; ++i)   {      const double angle       = boost::math::constants::two_pi<double>()       * (static_cast<double>(i+0) / static_cast<double>(n_items));     const double ray = 150.0;     const double x =  std::sin(angle) * ray;     const double y = -std::cos(angle) * ray;      QtTextItem * const item = new QtTextItem(m_texts.at(i));     item->setPos(x,y);     scene()->addItem(item);   }   //Create and start a timer   {     QTimer * const timer(new QTimer(this));     QObject::connect(timer,SIGNAL(timeout()),this,SLOT(OnTimer()));     timer->setInterval(100);     timer->start();   } }  void QtWidget::OnTimer() {   const boost::shared_ptr<Text>& text = m_texts[ std::rand() % m_texts.size() ];   text->SetText(text->GetText() + "*"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample6/text.h
-------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef TEXT_H #define TEXT_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-variable" #include <boost/signals2.hpp> #pragma GCC diagnostic pop  struct Text {   Text(const std::string& text);    const std::string& GetText() const { return m_text; }    void SetText(const std::string& text);    ///Allow a const Text to send signals   mutable boost::signals2::signal<void()> m_signal_text_changed;    private:    std::string m_text; };  #endif // TEXT_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsSimpleTextItemExample6/text.cpp
---------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-variable" #include "text.h" #pragma GCC diagnostic pop  Text::Text(const std::string& text)   : m_signal_text_changed{},     m_text(text)  {  }  void Text::SetText(const std::string& text) {   m_text = text;   m_signal_text_changed(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
