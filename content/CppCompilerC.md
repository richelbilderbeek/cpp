



 

 

 

 

 

([C++](Cpp.md)) ![Qt Creator](PicQtCreator.png) [How to use Qt Creator to compile C code?](CppCompilerC.md)
=============================================================================================================

 

[How to use Qt Creator to compile C code?](CppCompilerC.md) is a [Qt
FAQ](CppQtFaq.md) how to use [Qt Creator](CppQtCreator.md) to
[compile](CppCompile.md) C code.

 

Add the following lines to your [Qt project file](CppQtProjectFile.md):

 

  ------------------------------------------
  ` QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c`
  ------------------------------------------

 

 

 

 

 

Full example
------------

 

-   [Download the Qt Creator project
    'CppCompilerC' (zip)](CppCompilerC.zip)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppCompilerC.pro
---------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core gui  #Compile with Gnu C compiler QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c  TARGET = CppCompilerC CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///C code that is invalid C++ code struct template {     int new;     struct template* class; };  int main() {   struct template t;   t.new += 1;   t.class = 0;   return 0; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
