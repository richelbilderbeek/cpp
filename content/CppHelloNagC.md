



 

 

 

 

 

([C++](Cpp.htm)) [Hello NAG using C](CppHelloNagC.htm)
======================================================

 

[Hello NAG using C](CppHelloNagC.htm) is a [Hello
World](CppHelloWorld.htm) program to test the [NAG](CppNag.htm)
[library](CppLibrary.htm).

 

-   [Download the Qt Creator project
    'CppHelloNagC' (zip)](CppHelloNagC.htm)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   C: [How to use Qt Creator to compile C code?](CppCompilerC.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppHelloNagC.pro
---------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  QT       -= core QT       -= gui  INCLUDEPATH += /opt/NAG/cll3a09dgl/include  LIBS += -L/opt/NAG/cll3a09dgl/lib -lnagc_nag  #opt/NAG/cll3a09dgl/lib/libnagc_nag.so:-1: error: undefined reference to `sqrt' QMAKE_LFLAGS += -lm LIBS += -lm  #Compile with GNU C compiler QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c  CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp ``
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <math.h> #include <nag.h> #include <nag_stdlib.h>  int main(void) {   char * s = 0;   s = NAG_ALLOC(11,char);   if (!s)   {     printf("Cannot allocate memory for s");     return 1;   }   sprintf(s, "Hello NAG");   puts(s);   NAG_FREE(s);   return 0; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
