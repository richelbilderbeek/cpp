[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Porting GMP from Cygwin (under Windows) to Windows](CppGmpPortCygwinToWindows.htm)
====================================================================================================

 

![Cygwin](PicCygwin.png)![to](PicTo.png)![Windows](PicWindows.png)

 

After successfully [installing GMP under Cygwin (under
Windows)](CppGmpInstallCygwin.htm), I tried to run the [Hello
GMP](CppHelloGmp.htm) program.

 

With the Qt project file below, the error [Undefined reference to
'\_\_getreent'](CppLinkErrorUndefinedReferenceTo__getreent.htm) occurs:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-10-01T08:45:31 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloGmp unix:LIBS+= -L/usr/lib -lgmp win32:LIBS+= c:/cygwin/usr/local/lib/libgmp.lib win32:LIBS += c:/Qt/2010.02.1/mingw/lib/ win32:INCLUDEPATH += c:/cygwin/usr/local/include CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
