
 

 

 

 

 

([C++](Cpp.md)) [HelloQwtQtCreatorLubuntu](CppHelloQwtQtCreatorLubuntu.md)
============================================================================

 

![Qwt](PicQwt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Hello Qwt using Qt Creator under
Lubuntu](CppHelloQwtQtCreatorLubuntu.md) is a [Hello
Qwt](CppHelloQwt.md) program.

 

-   [Download the Qt Creator project
    'CppHelloQwtQtCreatorLubuntu' (zip)](CppHelloQwtQtCreatorLubuntu.zip)

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloQwtQtCreatorLubuntu/CppHelloQwtQtCreatorLubuntu.pro
------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp QMAKE_CXXFLAGS += -Wall -Wextra -Werror INCLUDEPATH += /usr/include/qwt-qt4 INCLUDEPATH += /usr/include/qwt #LIBS += -lqwt-qt4 LIBS += -L/usr/lib/qwt -lqwt`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloQwtQtCreatorLubuntu/main.cpp
--------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath> #include <string> #include <string> #include <sstream>  #include <QLabel> #include <QVBoxLayout> #include <QApplication>   #include <qwt_plot.h> #include <qwt_plot_curve.h> #include <qwt_text.h>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    QwtPlotCurve * const m_curve = new QwtPlotCurve("Sine");   QwtPlot * const m_plot = new QwtPlot(QwtText("CppHelloQwtQtCreatorLubuntu"));    m_plot->setGeometry(0,0,640,400);   m_plot->setAxisScale(QwtPlot::xBottom, 0.0,2.0 * M_PI);   m_plot->setAxisScale(QwtPlot::yLeft,-1.0,1.0);   std::vector<double> xs;   std::vector<double> ys;   for (double x = 0; x < 2.0 * M_PI; x+=(M_PI / 10.0))   {     xs.push_back(x);     ys.push_back(std::sin(x));   }   QwtPointArrayData * const data = new QwtPointArrayData(&xs[0],&ys[0],xs.size());   m_curve->setData(data);   m_curve->attach(m_plot);   m_plot->replot();   m_plot->show();    return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloQwtQtCreatorLubuntu/CppHelloQwtQtCreatorLubuntu.sh
------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="qmake" mytarget="CppHelloQwtQtCreatorLubuntu" myprofile=$mytarget.pro  if [ ! -e $myprofile ] then   echo "Qt Creator project '$myprofile' not found"   exit fi  $myfile $myprofile  if [ ! -e Makefile ] then   echo "FAIL: $myfile $myprofile"   exit fi  make  if [ -e $mytarget ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL" fi  #Cleaning up rm *.o rm Makefile rm $mytarget`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

