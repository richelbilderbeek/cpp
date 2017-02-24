



 

 

 

 

 

([C++](Cpp.md)) ![Wine](PicWine.png) [Wine fixme 1: displaying a QDialog](CppWineFixme1.md)
=============================================================================================

 

[Wine](CppWine.md) fixme. Running the code displays the following text:

 

  ----------------------------------------------------------------------------
  ` fixme:system:SetProcessDPIAware stub! fixme:win:FlashWindowEx 0x11df02c`
  ----------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)
-   ![Wine](PicWine.png) [Wine](CppWine.md) 1.4.1

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppWineFixme1.pro
----------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror TEMPLATE = app  SOURCES += \     qtmain.cpp  HEADERS +=  OTHER_FILES += \     Licence.txt \     crosscompiletowindows.sh `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtmain.cpp
----------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QDialog d;   d.show();   return a.exec(); }  /* Screen output:  fixme:system:SetProcessDPIAware stub! fixme:win:FlashWindowEx 0x11df02c  */ `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

crosscompiletowindows.sh
------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh #From http://richelbilderbeek.nl/CppQtCrosscompileToWindowsExample15.htm  echo "Cross compiling to Windows"  echo "1/2: Creating Windows makefile" i686-pc-mingw32-qmake CppWineFixme1.pro  echo "2/2: making makefile"  make  echo "Done cross compiling, starting Windows executable with Wine"  cd release  wine CppWineFixme1.exe   `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
