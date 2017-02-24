



 

 

 

 

 

([C++](Cpp.htm)) [LinkErrorCannotFindLgstapp](CppLinkErrorCannotFindLgstapp.htm)
================================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[cannot find -lgstapp-0.10](CppLinkErrorCannotFindLgstapp.htm) is a
[link error](CppLinkError.htm).

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppLinkErrorCannotFindLgstapp/CppLinkErrorCannotFindLgstapp.pro
----------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT += core gui  #To show I compile with Qt5 greaterThan(QT_MAJOR_VERSION, 4) {   QT += widgets webkitwidgets }  # Solution: #  sudo apt-get install libgstreamer1.0-dev #  sudo apt-get install libgstreamer0.10-dev #  sudo apt-get install libgstreamer-plugins-base1.0-dev #  sudo apt-get install libgstreamer-plugins-base0.10-dev`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
