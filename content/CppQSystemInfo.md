



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QtMobility::QSystemInfo](CppQSystemInfo.md)
===============================================================================

 

[QtMobility::QSystemInfo](CppQSystemInfo.md) is a
[QtMobility](CppQtMobility.md) [class](CppClass.md) for [mobile
applications](CppMobileApplication.md) to obtain system information
about the mobile phone.

 

-   [View a screenshot the Qt Creator project
    'QSystemInfo' (png)](CppQSystemInfo.png)
-   [Download the source code of the Qt Creator project
    'QSystemInfo' (zip)](CppQSystemInfo.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Mobile](PicMobile.png) [Mobile
    application](CppMobileApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Maemo](PicMaemo.png) [Maemo](CppMaemo.md)
-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 (maverick)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.42
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQSystemInfo.pro
-----------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-02-15T13:25:58 # #------------------------------------------------- QT       += core gui TARGET = CppQSystemInfo TEMPLATE = app SOURCES += main.cpp CONFIG += mobility MOBILITY =  symbian {     TARGET.UID3 = 0xed4d0261     # TARGET.CAPABILITY +=      TARGET.EPOCSTACKSIZE = 0x14000     TARGET.EPOCHEAPSIZE = 0x020000 0x800000 } MOBILITY += systeminfo`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QLabel> #include <QSystemInfo> #include <boost/scoped_ptr.hpp>  //Adapted from http://www.forum.nokia.com/Develop/Qt/Documentation/ //'Qt for Mobile Application Development for Education v1.1' int main(int argc, char *argv[] ) {   QApplication app( argc, argv );   QtMobility::QSystemInfo s;   boost::scoped_ptr<QLabel> label(     new QLabel("Current language is " + s.currentLanguage()       + " and you're using Qt "       + s.version(QtMobility::QSystemInfo::QtCore) ) );   label->show();   return app.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



