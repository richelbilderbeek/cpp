



 

 

 

 

 

([C++](Cpp.md)) [QFileDialogExample1](CppQFileDialogExample1.md)
==================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QFileDialog example 1: crafting a QFileDialog to select a
file](CppQFileDialogExample1.md) is a [QFileDialog](CppQFileDialog.md)
[example](CppExample.md).

 

-   [View a screenshot of
    'CppQFileDialogExample1' (png)](CppQFileDialogExample1.png)
-   [Download the Qt Creator project
    'CppQFileDialogExample1' (zip)](CppQFileDialogExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQFileDialogExample1/CppQFileDialogExample1.pro
--------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists (../../DesktopApplication.pri) {   include(../../DesktopApplication.pri) } !exists (../../DesktopApplication.pri) {   QT += core   QT += gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../Libraries/boost_1_55_0   } }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQFileDialogExample1/main.cpp
---------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>  #include <QApplication> #include <QFileDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QFileDialog d;    //enum ViewMode { Detail, List };   d.setViewMode(QFileDialog::Detail);    //enum FileMode { AnyFile, ExistingFile, Directory, ExistingFiles, DirectoryOnly };   d.setFileMode(QFileDialog::ExistingFiles);    //enum AcceptMode { AcceptOpen, AcceptSave };   d.setAcceptDrops(QFileDialog::AcceptOpen);    //enum Option { ShowDirsOnly, DontResolveSymlinks, DontConfirmOverwrite, DontUseSheet, DontUseNativeDialog, ReadOnly, HideNameFilterDetails }   d.setOptions(QFileDialog::ReadOnly);    d.exec();    if (d.result() == QDialog::Accepted)   {     std::cout << "Number of files selected: " << d.selectedFiles().size() << '\n';     const auto v = d.selectedFiles();     for (auto s: v) std::cout << s.toStdString() << '\n';   }   else   {     assert(d.result() == QDialog::Rejected);     std::cout << "Dialog closed with cancel or close\n";   } }  /* Example output:  Number of files selected: 3 /home/richel/ProjectRichelBilderbeek/Test/build-CppQFileDialogExample1-Qt_5_0_1_qt5-Debug/CppQFileDialogExample1 /home/richel/ProjectRichelBilderbeek/Test/build-CppQFileDialogExample1-Qt_5_0_1_qt5-Debug/main.o /home/richel/ProjectRichelBilderbeek/Test/build-CppQFileDialogExample1-Qt_5_0_1_qt5-Debug/Makefile  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
