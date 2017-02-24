
 

 

 

 

 

([C++](Cpp.md)) [StdUnique\_ptrExample2](CppStdUnique_ptrExample2.md)
=======================================================================

 

![Cpp11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[std::unique\_ptr example 2: custom deleter](CppUnique_ptrExample2.md)
is a [std::unique\_ptr](CppUnique_ptr.md) example that shows how to use
a custom deleter (in this case
[boost::checked\_delete](CppBoostChecked_delete.md)) with
[auto](CppAuto.md) and [std::function](CppStdFunction.md)

 

-   [Download the Qt Creator project
    'CppUnique\_ptrExample2' (zip)](CppUnique_ptrExample2.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdUnique\_ptrExample2/CppStdUnique\_ptrExample2.pro
--------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(release, debug|release) {   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }  # # # Boost # #  win32 {   INCLUDEPATH += \     ../../Libraries/boost_1_54_0 }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdUnique\_ptrExample2/main.cpp
------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/checked_delete.hpp> #include <boost/scoped_ptr.hpp>   struct MyClass {   MyClass() {}    static void Deleter(const MyClass * const p) { boost::checked_delete(p); }    private:   ~MyClass() { std::cout << "Destructor" << '\n'; }   friend void boost::checked_delete<>(MyClass* x);   friend void boost::checked_delete<>(const MyClass* x); };  int main() {   {     //Use of auto and lambda expression     const auto deleter       = [](const MyClass * const p)       {         boost::checked_delete(p);       };      const std::unique_ptr<const MyClass, decltype(deleter)> p {       new MyClass,deleter     };   }    {     //Use of std::function and static member function     const std::function<void(const MyClass * const)> deleter = MyClass::Deleter;      const std::unique_ptr<const MyClass, decltype(deleter)> p {       new MyClass,deleter     };   } }  /* Screen output  Destructor Destructor Press <RETURN> to close this window...  */`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

