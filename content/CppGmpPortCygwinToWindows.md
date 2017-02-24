
 

 

 

 

 

([C++](Cpp.md)) [Porting GMP from Cygwin (under Windows) to Windows](CppGmpPortCygwinToWindows.md)
====================================================================================================

 

![Cygwin](PicCygwin.png)![to](PicTo.png)![Windows](PicWindows.png)

 

After successfully [installing GMP under Cygwin (under
Windows)](CppGmpInstallCygwin.md), I tried to run the [Hello
GMP](CppHelloGmp.md) program.

 

With the Qt project file below, the error [Undefined reference to
'\_\_getreent'](CppLinkErrorUndefinedReferenceTo__getreent.md) occurs:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-10-01T08:45:31 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloGmp unix:LIBS+= -L/usr/lib -lgmp win32:LIBS+= c:/cygwin/usr/local/lib/libgmp.lib win32:LIBS += c:/Qt/2010.02.1/mingw/lib/ win32:INCLUDEPATH += c:/cygwin/usr/local/include CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

