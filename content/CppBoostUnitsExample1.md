



 

 

 

 

 

([C++](Cpp.htm)) [BoostUnitsExample1](CppBoostUnitsExample1.htm)
================================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units example 1: example from Boost](CppBoostUnitsExample1.htm)
is a [Boost.Units](CppBoostUnits.htm) example.

 

-   [Download the Qt Creator project
    'CppBoostUnitsExample1' (zip)](CppBoostUnitsExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostUnitsExample1/CppBoostUnitsExample1.pro
------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsExample1/main.cpp
--------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Slightly modified example from // http://www.boost.org/doc/libs/1_37_0/doc/html/boost_units/Examples.html  #include <complex> #include <iostream>  #include <boost/typeof/std/complex.hpp>  #include <boost/units/systems/si/current.hpp> #include <boost/units/systems/si/electric_potential.hpp> #include <boost/units/systems/si/energy.hpp> #include <boost/units/systems/si/force.hpp> #include <boost/units/systems/si/io.hpp> #include <boost/units/systems/si/length.hpp> #include <boost/units/systems/si/resistance.hpp>  using namespace boost::units; using namespace boost::units::si;  const quantity<energy> work(const quantity<force>& F,const quantity<length>& dx) {   return F*dx; }  int main() {   //test calculation of work   const quantity<force>     F(2.0*newton);   const quantity<length>    dx(2.0*meter);   const quantity<energy>    E(work(F,dx));    std::cout     << "F  = " << F <<  '\n'     << "dx = " << dx <<  '\n'     << "E  = " << E <<  '\n';     //check complex quantities   typedef std::complex<double>    complex_type;    const quantity<electric_potential,complex_type> v = complex_type(12.5,0.0)*volts;   const quantity<current,complex_type>            i = complex_type(3.0,4.0)*amperes;   const quantity<resistance,complex_type>         z = complex_type(1.5,-2.0)*ohms;    std::cout     << "V   = " << v << '\n'     << "I   = " << i << '\n'     << "Z   = " << z << '\n'     << "I*Z = " << i*z << '\n'     << "I*Z == V? " << std::boolalpha << (i*z == v) <<  '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
