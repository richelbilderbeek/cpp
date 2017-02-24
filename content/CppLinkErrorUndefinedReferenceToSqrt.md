
 

 

 

 

 

([C++](Cpp.md)) [link error: undefined reference to 'sqrt'](CppLinkErrorUndefinedReferenceToSqrt.md)
======================================================================================================

 

[link error: undefined reference to
'sqrt'](CppLinkErrorUndefinedReferenceToSqrt.md) is a [link
error](CppLinkError.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  make: Entering directory `/home/richel/Projects/Test/CppLinkErrorUndefinedReferenceToSqrt-build-desktop-Qt_4_8_3_in_PATH__System__Release' gcc -c -x c -O2 -Wall -W -D_REENTRANT -DQT_WEBKIT -DQT_NO_DEBUG -I/usr/share/qt4/mkspecs/linux-g++ -I../CppLinkErrorUndefinedReferenceToSqrt -I/usr/include/qt4 -I/opt/NAG/cll3a09dgl/include -I. -I../CppLinkErrorUndefinedReferenceToSqrt -I. -o main.o ../CppLinkErrorUndefinedReferenceToSqrt/main.cpp g++ -Wl,-O1 -o CppLinkErrorUndefinedReferenceToSqrt main.o    -L/usr/lib/i386-linux-gnu -L/opt/NAG/cll3a09dgl/lib -lnagc_nag -lpthread  /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `sqrt' make: Leaving directory `/home/richel/Projects/Test/CppLinkErrorUndefinedReferenceToSqrt-build-desktop-Qt_4_8_3_in_PATH__System__Release' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `floor' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `ceil' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `cosh' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `expm1f' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `tan' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `tanh' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `powf' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `log' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `atan' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `expm1' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `sinh' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `fmod' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `exp' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `sin' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `rint' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `pow' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `atan2' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `cos' /opt/NAG/cll3a09dgl/lib/libnagc_nag.so: undefined reference to `log10' collect2: error: ld returned 1 exit status make: *** [CppLinkErrorUndefinedReferenceToSqrt] Error 1 11:11:40: The process "/usr/bin/make" exited with code 2. Error while building/deploying project CppLinkErrorUndefinedReferenceToSqrt (target: Desktop) When executing step 'Make' ``
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

Background
----------

 

This [link error](CppLinkError.md) occurred when

-   compiling to C (see [How to use Qt Creator to compile C
    code?](CppCompilerC.md))
-   using the [NAG]() C [library](CppLibrary.md)

 

The most common solution to this [link error](CppLinkError.md) would be
to add the following line to your [Qt project
file](CppQtProjectFile.md):

 

  ----------------
  ` LIBS += -lm`
  ----------------

 

In this case, however, this did not work.

 

-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToSqrt' with the
    problem (zip)](CppLinkErrorUndefinedReferenceToSqrtProblem.zip)
-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToSqrt' with the
    solution (zip)](CppLinkErrorUndefinedReferenceToSqrtSolution.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppLinkErrorUndefinedReferenceToSqrt.pro
---------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core gui  INCLUDEPATH += /opt/NAG/cll3a09dgl/include  LIBS += -L/opt/NAG/cll3a09dgl/lib -lnagc_nag  #Compile with GNU C compiler QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c  CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <math.h> #include <nag.h> #include <nag_stdlib.h>  ///C code that is invalid C++ code struct template {     int new;     struct template* class; };  void test() {   struct template t;   t.new += 1;   t.class = 0; }   /* For C compiler */ int main(void) {   char * s = 0;   s = NAG_ALLOC(31,char);   if (!s)   {     /* ... */     return 1;   }   /* ... */   NAG_FREE(s);   return 0; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following two lines to your [project
file](CppQtProjectFile.md):

 

  ------------------------------------
  ` QMAKE_LFLAGS += -lm LIBS += -lm`
  ------------------------------------

 

 

 

 

 

 

