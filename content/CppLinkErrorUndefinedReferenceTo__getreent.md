



 

 

 

 

 

([C++](Cpp.htm)) [Undefined reference to '\_\_getreent'](CppLinkErrorUndefinedReferenceTo__getreent.htm)
========================================================================================================

 

![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

This [link error](CppLinkError.htm)

 

After successfully [installing GMP under Cygwin (under
Windows)](CppGmpInstallCygwin.htm), I tried to run the [Hello
GMP](CppHelloGmp.htm) program, using the Qt Creator project file below:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-10-01T08:45:31 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloGmp unix:LIBS+= -L/usr/lib -lgmp win32:LIBS+= c:/cygwin/usr/local/lib/libgmp.lib win32:LIBS += c:/Qt/2010.02.1/mingw/lib/ win32:INCLUDEPATH += c:/cygwin/usr/local/include CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that I link to a library created by [Cygwin](CppCygwin.htm):
'c:/cygwin/usr/local/lib/libgmp.lib'. Would this library have the wrong
format?

 

I searched my drives for \*.lib and memory\*.\*, but found nothing
usefull.

 

 

 

 

 





 



