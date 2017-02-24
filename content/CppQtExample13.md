



 

 

 

 

 

([C++](Cpp.htm)) [QtExample13](CppQtExample13.htm)
==================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)

 

This [Qt](CppQt.htm) example shows how to create a more complete custom
QDialog with a custom slot, like [this screenshot
(png)](CppQtExample13.png). This example elaborates on [Qt example 12:
creating a custom QDialog with slot](CppQtExample12.htm).

 

-   [Download the Qt Project of 'QtExample13' (zip)](CppQtExample13.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQtExample13/CppQtExample13.pro
----------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists(../../DesktopApplication.pri) {   QT += core gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   TEMPLATE = app    CONFIG(debug, debug|release) {     message(Debug mode)   }    CONFIG(release, debug|release) {     message(Release mode)     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }    QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra    unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../../Projects/Libraries/boost_1_55_0   } }  SOURCES += main.cpp  SOURCES  += mydialog.cpp HEADERS  += mydialog.h`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample13/main.cpp
-------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QApplication> #include "mydialog.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   MyDialog w;   w.show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample13/mydialog.h
---------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef MYDIALOG_H #define MYDIALOG_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/scoped_ptr.hpp> #include <QDialog> #include <QPushButton> #include <QVBoxLayout> #pragma GCC diagnostic pop  class MyDialog : public QDialog {   Q_OBJECT  public:    MyDialog()     : m_layout(new QVBoxLayout),     m_button1(new QPushButton),     m_button2(new QPushButton),     m_clicks(0)   {     m_button1->setText("Count");     m_button1->connect(         m_button1.get(),SIGNAL(clicked()),         this,SLOT(buttonClicked()));     m_button2->setText("Quit");     m_button2->connect(         m_button2.get(),SIGNAL(clicked()),         this,SLOT(close()));     m_layout->addWidget(m_button1.get());     m_layout->addWidget(m_button2.get());      this->setGeometry(0,0,300,100);     this->setWindowTitle("CppQtExample13");     this->setLayout(m_layout.get());   }  private:   boost::scoped_ptr<QVBoxLayout> m_layout;   boost::scoped_ptr<QPushButton> m_button1;   boost::scoped_ptr<QPushButton> m_button2;   int m_clicks;  private slots:   void buttonClicked()   {     ++m_clicks;     QString s; s = s.number(m_clicks);     this->setWindowTitle("Top button is clicked " + s + " times");   } };  #endif // MYDIALOG_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtExample13/mydialog.cpp
-----------------------------

 

  --------------------------
  ` #include "mydialog.h"`
  --------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
