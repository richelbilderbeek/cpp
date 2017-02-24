



 

 

 

 

 

([C++](Cpp.htm)) [MathGL example 1: a simple 3D plot](CppMathGlExample1.htm)
============================================================================

 

This [MathGL](CppMathGl.htm) example shows how to use
[MathGL](CppMathGl.htm) to write a simple 3D plot to file. Then
[Qt](CppQt.htm) is used to display this plot, like [this screenshot
(png)](CppMathGlExample1.png).

 

-   [Download the Qt Project of
    'MathGLExample1' (zip)](CppMathGlExample1.zip)

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [MathGL](CppMathGl.htm): version 1.9-2build1, from Ubuntu Software
    centre ('libmgl-dev')
-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-23T13:24:48 # #------------------------------------------------- QT       += core gui TARGET = CppMathGlExample1 CONFIG   += console CONFIG   -= app_bundle LIBS += -L/usr/local/lib -lmgl TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDialog> #include <QLabel> #include <QPixmap> #include <QVBoxLayout>  #include <mgl/mgl.h> #include <mgl/mgl_qt.h>  int main(int argc, char* argv[]) {   //Qt startup   QApplication a(argc, argv);    //Using MathGL to write a plot to file   mglGraphZB plot;   plot.Alpha(true);   plot.Light(true);   plot.Light(0,mglPoint(1,0,-1));   mglData data(2,2);   data.Modify("x*y");   plot.Axis(mglPoint(0,0,0),mglPoint(1,1,1));   plot.Rotate(80,40);   plot.Surf(data);   plot.Box();   plot.Puts(mglPoint(0.7,1,1.2),"a(x,y)");   plot.WriteBMP("CppMathGlExample1.bmp");    //Use Qt to display the saved plot   QDialog dialog;   QVBoxLayout layout;   QPixmap pixmap("CppMathGlExample1.bmp");   QLabel label;   label.setPixmap(pixmap);   layout.addWidget(&label);   dialog.setLayout(&layout);   dialog.show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
