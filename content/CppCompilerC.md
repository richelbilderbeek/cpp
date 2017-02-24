



 

 

 

 

 

([C++](Cpp.htm)) ![Qt Creator](PicQtCreator.png) [How to use Qt Creator to compile C code?](CppCompilerC.htm)
=============================================================================================================

 

[How to use Qt Creator to compile C code?](CppCompilerC.htm) is a [Qt
FAQ](CppQtFaq.htm) how to use [Qt Creator](CppQtCreator.htm) to
[compile](CppCompile.htm) C code.

 

Add the following lines to your [Qt project file](CppQtProjectFile.htm):

 

  ------------------------------------------
  ` QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c`
  ------------------------------------------

 

 

 

 

 

Full example
------------

 

-   [Download the Qt Creator project
    'CppCompilerC' (zip)](CppCompilerC.zip)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppCompilerC.pro
---------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core gui  #Compile with Gnu C compiler QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c  TARGET = CppCompilerC CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///C code that is invalid C++ code struct template {     int new;     struct template* class; };  int main() {   struct template t;   t.new += 1;   t.class = 0;   return 0; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
