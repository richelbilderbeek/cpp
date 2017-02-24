
 

 

 

 

 

([C++](Cpp.md)) [LinkErrorCannotFindLgstapp](CppLinkErrorCannotFindLgstapp.md)
================================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[cannot find -lgstapp-0.10](CppLinkErrorCannotFindLgstapp.md) is a
[link error](CppLinkError.md).

 

-   [Download the Qt Creator project
    'CppLinkErrorCannotFindLgstapp' (zip)](CppLinkErrorCannotFindLgstapp.zip)

 

This bug is reported with this [Launchpad bug
report](https://bugs.launchpad.net/ubuntu/+source/qtwebkit-opensource-src/+bug/1134745)
and another [Launchpad bug
report](https://bugs.launchpad.net/ubuntu/+source/qtbase-opensource-src/+bug/1165250).

 

 

 

 

 

Solution
--------

 

Install some gstreamer packages:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` sudo apt-get install libgstreamer1.0-dev  sudo apt-get install libgstreamer0.10-dev  sudo apt-get install libgstreamer-plugins-base1.0-dev  sudo apt-get install libgstreamer-plugins-base0.10-dev `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppLinkErrorCannotFindLgstapp/CppLinkErrorCannotFindLgstapp.pro
----------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT += core gui  #To show I compile with Qt5 greaterThan(QT_MAJOR_VERSION, 4) {   QT += widgets webkitwidgets }  # Solution: #  sudo apt-get install libgstreamer1.0-dev #  sudo apt-get install libgstreamer0.10-dev #  sudo apt-get install libgstreamer-plugins-base1.0-dev #  sudo apt-get install libgstreamer-plugins-base0.10-dev`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
