



 

 

 

 

 

([C++](Cpp.htm)) [copy assignment operator](CppCopyAssignmentOperator.htm)
==========================================================================

 

The [copy assignment operator](CppCopyAssignmentOperator.htm) is an
[operator](CppOperator.htm) used in assignment and one of [The Big
Four](CppBigFour.htm). It differs from a
[constructor](CppConstructor.htm), because the [copy assignment
operator](CppCopyAssignmentOperator.htm) might have to clean up the
previous (to-be-overwritten) [instance](CppInstance.htm) its resources.

 

There are multiple idioms for [overloading](CppOverload.htm) a [copy
assignment operator](CppCopyAssignmentOperator.htm):

-   the 'classic way', which checks for self-assignment
-   the 'swap idiom'

 

 

 

 

 

 

The classic way
---------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   //Default constructor   MyClass(const int x = 0) : m_x(x) {}    //Canonical form of copy assignment operator   MyClass& operator=(const MyClass& other)   {     //Prevent self-assignment     if (this != &other)     {       //Copy member variables       m_x = other.m_x;     }     //Return *this by convention     return *this;   }    ///Read the member variable   int GetX() const { return m_x; }    private:   //Member variables   int m_x; };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

The swap idiom
--------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm>  struct MyClass {   //Default constructor   MyClass(const int x = 0) : m_x(x) {}    //Canonical form of copy assignment operator   MyClass& operator=(const MyClass& other)   {     MyClass temp(other);     Swap(temp);      //Return *this by convention     return *this;   }    ///Read the member variable   int GetX() const { return m_x; }    private:   //Member variables   int m_x;    void Swap(MyClass& other)   {     std::swap(m_x,other.m_x);   } };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Complete example
----------------

 

-   [Download the Qt Creator project
    'CppCopyAssignmentOperator' (zip)](CppCopyAssignmentOperator.htm)

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppCopyAssignmentOperator.pro
----------------------------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  struct MyClassClassic {   //Default constructor   MyClassClassic(const int x = 0) : m_x(x) {}    //Canonical form of copy assignment operator   MyClassClassic& operator=(const MyClassClassic& other)   {     //Prevent self-assignment     if (this != &other)     {       //Copy member variables       m_x = other.m_x;     }     //Return *this by convention     return *this;   }    ///Read the member variable   int GetX() const { return m_x; }    private:   //Member variables   int m_x; };  #include <algorithm>  struct MyClassSwap {   //Default constructor   MyClassSwap(const int x = 0) : m_x(x) {}    //Canonical form of copy assignment operator   MyClassSwap& operator=(const MyClassSwap& other)   {     MyClassSwap temp(other);     Swap(temp);      //Return *this by convention     return *this;   }    ///Read the member variable   int GetX() const { return m_x; }    private:   //Member variables   int m_x;    void Swap(MyClassSwap& other)   {     std::swap(m_x,other.m_x);   } };  #include <cassert>  int main() {   {     MyClassClassic x(1);     MyClassClassic y(2);     assert(x.GetX() != y.GetX());     x = y;     assert(x.GetX() == y.GetX());   }   {     MyClassSwap x(1);     MyClassSwap y(2);     assert(x.GetX() != y.GetX());     x = y;     assert(x.GetX() == y.GetX());   } } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
