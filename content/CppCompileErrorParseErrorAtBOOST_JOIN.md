
 

 

 

 

 

([C++](Cpp.md)) [CompileErrorParseErrorAtBOOST\_JOIN](CppCompileErrorParseErrorAtBOOST_JOIN.md)
=================================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[CppCompileErrorParseErrorAtBOOST\_JOIN](CppCompileErrorParseErrorAtBOOST_JOIN.md)
is a [Boost](CppBoost.md) [compile error](CppCompileError.md).

-   [Download the Qt Creator project
    'CppCompileErrorParseErrorAtBOOST\_JOIN' (zip)](CppCompileErrorParseErrorAtBOOST_JOIN.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppCompileErrorParseErrorAtBOOST\_JOIN/CppCompileErrorParseErrorAtBOOST\_JOIN.pro
----------------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  include(../../Libraries/Boost.pri) #Or use the code below  QT += core gui QT += webkit greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  # undefined reference to `_imp___ZNK8QWebView8settingsEv' greaterThan(QT_MAJOR_VERSION, 4): QT += webkitwidgets  CONFIG(debug, debug|release) {   message(Debug mode) }  CONFIG(release, debug|release) {   message(Release mode)    #Remove all asserts and TRACE   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  TEMPLATE = app   SOURCES += \     main.cpp \     qtdialog.cpp  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror  HEADERS += \     qtdialog.h  FORMS += \     qtdialog.ui ``
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppCompileErrorParseErrorAtBOOST\_JOIN/main.cpp
-------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QApplication> #include "qtdialog.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppCompileErrorParseErrorAtBOOST\_JOIN/qtdialog.h
---------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/algorithm/string/split.hpp> #include <boost/foreach.hpp> #include <boost/lexical_cast.hpp> #include <boost/algorithm/string/split.hpp> #include <boost/foreach.hpp> #include <boost/lexical_cast.hpp>  #include <QDialog> #pragma GCC diagnostic pop   namespace Ui {   class QtDialog; }  class QtDialog : public QDialog {   Q_OBJECT    public:   explicit QtDialog(QWidget *parent = 0);   ~QtDialog();    private:   Ui::QtDialog *ui; };  #endif // QTDIALOG_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppCompileErrorParseErrorAtBOOST\_JOIN/qtdialog.cpp
-----------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifdef _WIN32 //See http://www.richelbilderbeek.nl/CppCompileErrorUnableToFindNumericLiteralOperatorPperatorQ.htm #if !(__GNUC__ >= 4 && __GNUC_MINOR__ >= 8) //See http://www.richelbilderbeek.nl/CppCompileErrorSwprintfHasNotBeenDeclared.htm #undef __STRICT_ANSI__ #endif #endif  #include "qtdialog.h" #include "ui_qtdialog.h"  #include <iostream> #include <string> #include <vector>   const std::vector<std::string> SeperateString(   const std::string& input,   const char seperator) {   std::vector<std::string> v;   boost::algorithm::split(v,input,     std::bind2nd(std::equal_to<char>(),seperator),     boost::algorithm::token_compress_on);   return v; }   QtDialog::QtDialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::QtDialog) {   ui->setupUi(this);    const std::vector<std::string> v = SeperateString("1,2,3,4",',');   BOOST_FOREACH(const std::string s, v) { std::cout << boost::lexical_cast<int>(s) << ','; } }  QtDialog::~QtDialog() {   delete ui; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppCompileErrorParseErrorAtBOOST\_JOIN/CppCompileErrorParseErrorAtBOOST\_JOIN.sh
----------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash #From http://richelbilderbeek.nl/CppHelloBoostQtCreatorLubuntuToWindows.htm echo "Cross compiling to Windows"  myfile="i686-pc-mingw32-qmake" mytarget="CppCompileErrorParseErrorAtBOOST_JOIN" myprofile=$mytarget.pro myexefile=./release/$mytarget.exe   if [ -e $myfile ] then   echo "MXE crosscompiler '$myfile' found" else   echo "MXE crosscompiler '$myfile' not found directly, but perhaps it is in the PATH"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: qmake $myprofile"   exit fi  echo "2/2: making makefile"  make  if [ -e $myexefile ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm -r debug rm -r release rm Makefile rm Makefile.*`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

