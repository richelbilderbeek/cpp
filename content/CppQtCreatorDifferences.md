
 

 

 

 

 

([C++](Cpp.md)) ![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)![VirtualBox](PicVirtualBox.png)![Ubuntu](PicUbuntu.png) [Qt Creator differences between Run and Debug modes](CppQtCreatorDifferences.md)
====================================================================================================================================================================================================================

 

[Qt FAQ](CppQtFaq.md).

 

There are the following differences between Run and Debug mode:

-   The slashes in a filename's path vary (\*):
    -   ![Windows](PicWindows.png)![VirtualBox](PicVirtualBox.png)![Ubuntu](PicUbuntu.png)
        Desktop Run:
        'C:\\QtSDK\\Projects\\CppQtCreatorDifferences-build-desktop\\debug\\CppQtCreatorDifferences.exe'
        ([screenshot (png)](CppQtCreatorDifferencesWindowsVirtualBoxUbuntuDesktopRun.png))
    -   ![Windows](PicWindows.png)![VirtualBox](PicVirtualBox.png)![Ubuntu](PicUbuntu.png)
        Desktop Debug:
        'C:/QtSDK/Projects/CppQtCreatorDifferences-build-desktop/debug/CppQtCreatorDifferences.exe'
        ([screenshot (png)](CppQtCreatorDifferencesWindowsVirtualBoxUbuntuDesktopDebug.png))
    -   ![Windows](PicWindows.png)![VirtualBox](PicVirtualBox.png)![Ubuntu](PicUbuntu.png)
        Simulator Run:
        'C:\\QtSDK\\Projects\\CppQtCreatorDifferences-build-simulator\\debug\\CppQtCreatorDifferences.exe'
        ([screenshot (png)](CppQtCreatorDifferencesWindowsVirtualBoxUbuntuSimulatorRun.png))
    -   ![Windows](PicWindows.png)![VirtualBox](PicVirtualBox.png)![Ubuntu](PicUbuntu.png)
        Simulator Debug:
        'C:/QtSDK/Projects/CppQtCreatorDifferences-build-simulator/debug/CppQtCreatorDifferences.exe'
        ([screenshot (png)](CppQtCreatorDifferencesWindowsVirtualBoxUbuntuSimulatorDebug.png))
    -   ![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
        Desktop Run:
        '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppQtCreatorDifferences-build-desktop/CppQtCreatorDifferences'
        ([screenshot (png)](CppQtCreatorDifferencesUbuntuDesktopRun.png))
    -   ![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
        Desktop Debug:
        '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppQtCreatorDifferences-build-desktop/CppQtCreatorDifferences'
        ([screenshot (png)](CppQtCreatorDifferencesUbuntuDesktopDebug.png))
    -   ![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
        Simulator Run:
        '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppQtCreatorDifferences-build-simulator/CppQtCreatorDifferences'
        ([screenshot (png)](CppQtCreatorDifferencesUbuntuSimulatorRun.png))
    -   ![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
        Simulator Debug:
        '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppQtCreatorDifferences-build-simulator/CppQtCreatorDifferences'
        ([screenshot (png)](CppQtCreatorDifferencesUbuntuSimulatorDebug.png))
-   Different DLL's/shared libaries are called

 

(\*) This is checked by the program below.

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)
-   ![Mobile](PicMobile.png) [Mobile
    application](CppMobileApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Symbian](PicSymbian.png) [Symbian](CppSymbian.md)
-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 (maverick)
-   ![VirtualBox](PicVirtualBox.png) [VirtualBox](CppVirtualBox.md)
    3.2.8\_OSEr64453
-   ![Windows](PicWindows.png) [Windows](CppWindows.md) XP

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.1
    (on Ubuntu)
-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) from
    Symbian SDK 2.1 (on Windows)

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQtCreatorDifferences.pro
--------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-02-09T11:50:27 # #------------------------------------------------- QT       += core gui TARGET = CppQtCreatorDifferences CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp \     dialog.cpp HEADERS += \     dialog.h FORMS += \     dialog.ui unix:!symbian {     maemo5 {         target.path = /opt/usr/bin     } else {         target.path = /usr/local/bin     }     INSTALLS += target }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::setText(const char* c) {   ui->label->setText(c); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {     class Dialog; }  class Dialog : public QDialog {     Q_OBJECT  public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();     void setText(const char* );  private:     Ui::Dialog *ui; }; #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog d;   d.setText(argv[0]);   d.show();   return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Downloads
---------

 

-   [Download the Qt Creator project
    'CppQtCreatorDifferences' (zip)](CppQtCreatorDifferences.zip)

 

 

 

 

 

 

