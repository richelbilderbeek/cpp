[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QwtExample6](CppQwtExample6.htm)
==================================================

 

![Boost](PicBoost.png)![Qt](PicQt.png)![Qwt](PicQwt.png)![C++11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Qwt example 6: scatter plot with smart pointers](CppQwtExample6.htm) is
a [Qwt](CppQwt.htm) [example](CppExample.htm) that shows how to create a
scatter plot using [smart pointers](CppSmartPointer.htm).

 

-   [View a screenshot of CppQwtExample6 (png)](CppQwtExample6.png)
-   [Download the Qt Creator project
    'CppQwtExample6' (zip)](CppQwtExample6.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQwtExample6/CppQwtExample6.pro
----------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` #Qwt does not go together with Qwt include(../../DesktopApplicationNoWeffcpp.pri) include(../../Libraries/Qwt.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQwtExample6/main.cpp
-------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <boost/math/constants/constants.hpp> #include <boost/shared_ptr.hpp> #include <boost/make_shared.hpp>  #include <QApplication>  #include "qwt_plot.h" #include "qwt_plot_curve.h" #include "qwt_text.h"  #if QWT_VERSION >= 0x060100 || !WIN32 #include "qwt_point_data.h" #endif #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    const auto curve = boost::make_shared<QwtPlotCurve>("Sine");   const auto plot = boost::make_shared<QwtPlot>();   const double tau = boost::math::constants::two_pi<double>();    plot->setGeometry(8,32,640,400);   plot->setAxisScale(QwtPlot::xBottom,0.0,tau);   plot->setAxisScale(QwtPlot::yLeft,-1.0,1.0);   std::vector<double> xs;   std::vector<double> ys;   for (double x = 0.0; x < tau; x+= (tau / 100.0))   {     xs.push_back(x);     ys.push_back(std::sin(x));   }   #if QWT_VERSION >= 0x060100 || !WIN32   const auto data = boost::make_shared<QwtPointArrayData>(&xs[0],&ys[0],xs.size());   curve->setData(data.get());   #else   curve->setData(&xs[0],&ys[0],xs.size());   #endif   curve->attach(plot.get());   plot->replot();   plot->show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
