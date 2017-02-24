
 

 

 

 

 

([C++](Cpp.md)) [Hello NAG using C](CppHelloNagC.md)
======================================================

 

[Hello NAG using C](CppHelloNagC.md) is a [Hello
World](CppHelloWorld.md) program to test the [NAG](CppNag.md)
[library](CppLibrary.md).

 

-   [Download the Qt Creator project
    'CppHelloNagC' (zip)](CppHelloNagC.md)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   C: [How to use Qt Creator to compile C code?](CppCompilerC.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppHelloNagC.pro
---------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  QT       -= core QT       -= gui  INCLUDEPATH += /opt/NAG/cll3a09dgl/include  LIBS += -L/opt/NAG/cll3a09dgl/lib -lnagc_nag  #opt/NAG/cll3a09dgl/lib/libnagc_nag.so:-1: error: undefined reference to `sqrt' QMAKE_LFLAGS += -lm LIBS += -lm  #Compile with GNU C compiler QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c  CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp ``
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <math.h> #include <nag.h> #include <nag_stdlib.h>  int main(void) {   char * s = 0;   s = NAG_ALLOC(11,char);   if (!s)   {     printf("Cannot allocate memory for s");     return 1;   }   sprintf(s, "Hello NAG");   puts(s);   NAG_FREE(s);   return 0; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

