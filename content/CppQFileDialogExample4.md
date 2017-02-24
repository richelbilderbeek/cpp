



 

 

 

 

 

([C++](Cpp.htm)) [QFileDialogExample4](CppQFileDialogExample4.htm)
==================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[QFileDialog example 4: crafting a QFileDialog to save a
file](CppQFileDialogExample4.htm) is a [QFileDialog](CppQFileDialog.htm)
[example](CppExample.htm).

 

-   [View a screenshot of
    'CppQFileDialogExample4' (png)](CppQFileDialogExample4.png)
-   [Download the Qt Creator project
    'CppQFileDialogExample4' (zip)](CppQFileDialogExample4.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQFileDialogExample4/CppQFileDialogExample4.pro
--------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets QMAKE_CXXFLAGS += -std=c++11 TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQFileDialogExample4/main.cpp
---------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>  #include <QApplication> #include <QFileDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QFileDialog d;    //enum ViewMode { Detail, List };   d.setViewMode(QFileDialog::Detail);    //enum FileMode { AnyFile, ExistingFile, Directory, ExistingFiles, DirectoryOnly };   d.setFileMode(QFileDialog::AnyFile);    //enum AcceptMode { AcceptOpen, AcceptSave };   d.setAcceptDrops(QFileDialog::AcceptSave);    //enum Option { ShowDirsOnly, DontResolveSymlinks, DontConfirmOverwrite, DontUseSheet, DontUseNativeDialog, ReadOnly, HideNameFilterDetails }   //Without QFileDialog::DontUseNativeDialog there will not be an edit box to supply   //a filename, under Lubuntu 13.04 (raring)   d.setOptions(QFileDialog::DontUseNativeDialog);    d.setWindowTitle("Save"); //Otherwise it states 'Open'    d.exec();    if (d.result() == QDialog::Accepted)   {     std::cout << "Number of files selected: " << d.selectedFiles().size() << '\n';     const auto v = d.selectedFiles();     for (auto s: v) std::cout << s.toStdString() << '\n';   }   else   {     assert(d.result() == QDialog::Rejected);     std::cout << "Dialog closed with cancel or close\n";   } }  /* Example output:  Number of files selected: 1 /home/richel/ProjectRichelBilderbeek/Test/CppQFileDialogExample4/mynewfile.txt  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
