
 

 

 

 

 

([C++](Cpp.md)) [QwtExample6](CppQwtExample6.md)
==================================================

 

![Boost](PicBoost.png)![Qt](PicQt.png)![Qwt](PicQwt.png)![C++11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Qwt example 6: scatter plot with smart pointers](CppQwtExample6.md) is
a [Qwt](CppQwt.md) [example](CppExample.md) that shows how to create a
scatter plot using [smart pointers](CppSmartPointer.md).

 

-   [View a screenshot of CppQwtExample6 (png)](CppQwtExample6.png)
-   [Download the Qt Creator project
    'CppQwtExample6' (zip)](CppQwtExample6.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQwtExample6/CppQwtExample6.pro
----------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` #Qwt does not go together with Qwt include(../../DesktopApplicationNoWeffcpp.pri) include(../../Libraries/Qwt.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQwtExample6/main.cpp
-------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <boost/math/constants/constants.hpp> #include <boost/shared_ptr.hpp> #include <boost/make_shared.hpp>  #include <QApplication>  #include "qwt_plot.h" #include "qwt_plot_curve.h" #include "qwt_text.h"  #if QWT_VERSION >= 0x060100 || !WIN32 #include "qwt_point_data.h" #endif #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    const auto curve = boost::make_shared<QwtPlotCurve>("Sine");   const auto plot = boost::make_shared<QwtPlot>();   const double tau = boost::math::constants::two_pi<double>();    plot->setGeometry(8,32,640,400);   plot->setAxisScale(QwtPlot::xBottom,0.0,tau);   plot->setAxisScale(QwtPlot::yLeft,-1.0,1.0);   std::vector<double> xs;   std::vector<double> ys;   for (double x = 0.0; x < tau; x+= (tau / 100.0))   {     xs.push_back(x);     ys.push_back(std::sin(x));   }   #if QWT_VERSION >= 0x060100 || !WIN32   const auto data = boost::make_shared<QwtPointArrayData>(&xs[0],&ys[0],xs.size());   curve->setData(data.get());   #else   curve->setData(&xs[0],&ys[0],xs.size());   #endif   curve->attach(plot.get());   plot->replot();   plot->show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

