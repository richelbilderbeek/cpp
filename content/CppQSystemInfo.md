[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QtMobility::QSystemInfo](CppQSystemInfo.htm)
===============================================================================

 

[QtMobility::QSystemInfo](CppQSystemInfo.htm) is a
[QtMobility](CppQtMobility.htm) [class](CppClass.htm) for [mobile
applications](CppMobileApplication.htm) to obtain system information
about the mobile phone.

 

-   [View a screenshot the Qt Creator project
    'QSystemInfo' (png)](CppQSystemInfo.png)
-   [Download the source code of the Qt Creator project
    'QSystemInfo' (zip)](CppQSystemInfo.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Mobile](PicMobile.png) [Mobile
    application](CppMobileApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Maemo](PicMaemo.png) [Maemo](CppMaemo.htm)
-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.10 (maverick)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.42
-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQSystemInfo.pro
-----------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-02-15T13:25:58 # #------------------------------------------------- QT       += core gui TARGET = CppQSystemInfo TEMPLATE = app SOURCES += main.cpp CONFIG += mobility MOBILITY =  symbian {     TARGET.UID3 = 0xed4d0261     # TARGET.CAPABILITY +=      TARGET.EPOCSTACKSIZE = 0x14000     TARGET.EPOCHEAPSIZE = 0x020000 0x800000 } MOBILITY += systeminfo`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QLabel> #include <QSystemInfo> #include <boost/scoped_ptr.hpp>  //Adapted from http://www.forum.nokia.com/Develop/Qt/Documentation/ //'Qt for Mobile Application Development for Education v1.1' int main(int argc, char *argv[] ) {   QApplication app( argc, argv );   QtMobility::QSystemInfo s;   boost::scoped_ptr<QLabel> label(     new QLabel("Current language is " + s.currentLanguage()       + " and you're using Qt "       + s.version(QtMobility::QSystemInfo::QtCore) ) );   label->show();   return app.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
