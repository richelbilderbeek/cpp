
 

 

 

 

 

([C++](Cpp.md)) [QFileDialogExample2](CppQFileDialogExample2.md)
==================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QFileDialog example 2: using
QFileDialog::getOpenFileNames](CppQFileDialogExample2.md) is a
[QFileDialog](CppQFileDialog.md) [example](CppExample.md).

 

-   [View a screenshot of
    'CppQFileDialogExample2' (png)](CppQFileDialogExample2.png)
-   [Download the Qt Creator project
    'CppQFileDialogExample2' (zip)](CppQFileDialogExample2.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQFileDialogExample2/CppQFileDialogExample2.pro
--------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets QMAKE_CXXFLAGS += -std=c++11 TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQFileDialogExample2/main.cpp
---------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <QApplication> #include <QFileDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    const auto v = QFileDialog::getOpenFileNames();    std::cout << "Number of files selected: " << v.size() << '\n';   for (auto s: v) std::cout << s.toStdString() << '\n';  }  /* Example output:  Number of files selected: 0  */  /* Example output:  Number of files selected: 3 /home/richel/ProjectRichelBilderbeek/Test/build-CppQFileDialogExample2-Qt_5_0_1_qt5-Debug/CppQFileDialogExample2 /home/richel/ProjectRichelBilderbeek/Test/build-CppQFileDialogExample2-Qt_5_0_1_qt5-Debug/main.o /home/richel/ProjectRichelBilderbeek/Test/build-CppQFileDialogExample2-Qt_5_0_1_qt5-Debug/Makefile */`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

