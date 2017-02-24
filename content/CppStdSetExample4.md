



 

 

 

 

 

([C++](Cpp.htm)) [StdSetExample4](CppStdSetExample4.htm)
========================================================

 

![C++98](PicCpp98.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[std::set example 4: put smart pointers of a custom class in a std::set
in a custom order](CppStdSetExample4.htm) is a [std::set](CppStdSet.htm)
[example](CppExample.htm).

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdSetExample4/CppStdSetExample4.pro
----------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp  # Go ahead and use Qt.Core: it is about as platform-independent as # the STL and Boost QT += core  # Go ahead and use Qt.Gui: it is about as platform-independent as # the STL and Boost. It is needed for QImage QT += gui  # Don't define widgets: it would defy the purpose of this console # application to work non-GUI #greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app  # # # Type of compile # #  CONFIG(release, debug|release) {   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }  win32 {   INCLUDEPATH += \     ../../Libraries/boost_1_54_0 }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdSetExample4/main.cpp
----------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <iostream> #include <iterator> #include <set> #include <string> #include <vector> #include <memory>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/shared_ptr.hpp> #pragma GCC diagnostic pop  struct MyClass {   MyClass(const std::string& s, const int x) : m_s(s), m_x(x) {}   const std::string m_s;   const int m_x; };  bool operator<(const MyClass& lhs, const MyClass& rhs) = delete;  ///Prevent ordering sets by the pointers their addresses bool operator<(const boost::shared_ptr<      MyClass> lhs, const boost::shared_ptr<      MyClass> rhs) = delete; bool operator<(const boost::shared_ptr<const MyClass> lhs, const boost::shared_ptr<      MyClass> rhs) = delete; bool operator<(const boost::shared_ptr<      MyClass> lhs, const boost::shared_ptr<const MyClass> rhs) = delete; bool operator<(const boost::shared_ptr<const MyClass> lhs, const boost::shared_ptr<const MyClass> rhs) = delete;  //Display x first std::ostream& operator<<(std::ostream& os, const MyClass& m) {   os << m.m_x << ' ' << m.m_s;   return os; }  int main() {   std::set<boost::shared_ptr<MyClass>,std::function<bool(boost::shared_ptr<MyClass>,boost::shared_ptr<MyClass>)>> s(     [](const boost::shared_ptr<MyClass> lhs, const boost::shared_ptr<MyClass> rhs)     {       return lhs->m_x < rhs->m_x;     }   );   //Insert ordered by s   s.insert(boost::shared_ptr<MyClass>(new MyClass("five",5)));   s.insert(boost::shared_ptr<MyClass>(new MyClass("four",4)));   s.insert(boost::shared_ptr<MyClass>(new MyClass("one",1)));   s.insert(boost::shared_ptr<MyClass>(new MyClass("six",6)));   s.insert(boost::shared_ptr<MyClass>(new MyClass("three",3)));   s.insert(boost::shared_ptr<MyClass>(new MyClass("two",2)));   //Show that the set orders by MyClass their x   std::transform(s.begin(),s.end(),std::ostream_iterator<MyClass>(std::cout,"\n"),     [](const boost::shared_ptr<MyClass> m) { return *m; }   ); }  /* Screen output:  1 one 2 two 3 three 4 four 5 five 6 six Press <RETURN> to close this window...  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
