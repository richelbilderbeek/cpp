
 

 

 

 

 

([C++](Cpp.md)) [copy assignment operator](CppCopyAssignmentOperator.md)
==========================================================================

 

The [copy assignment operator](CppCopyAssignmentOperator.md) is an
[operator](CppOperator.md) used in assignment and one of [The Big
Four](CppBigFour.md). It differs from a
[constructor](CppConstructor.md), because the [copy assignment
operator](CppCopyAssignmentOperator.md) might have to clean up the
previous (to-be-overwritten) [instance](CppInstance.md) its resources.

 

There are multiple idioms for [overloading](CppOverload.md) a [copy
assignment operator](CppCopyAssignmentOperator.md):

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
    'CppCopyAssignmentOperator' (zip)](CppCopyAssignmentOperator.md)

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppCopyAssignmentOperator.pro
----------------------------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  struct MyClassClassic {   //Default constructor   MyClassClassic(const int x = 0) : m_x(x) {}    //Canonical form of copy assignment operator   MyClassClassic& operator=(const MyClassClassic& other)   {     //Prevent self-assignment     if (this != &other)     {       //Copy member variables       m_x = other.m_x;     }     //Return *this by convention     return *this;   }    ///Read the member variable   int GetX() const { return m_x; }    private:   //Member variables   int m_x; };  #include <algorithm>  struct MyClassSwap {   //Default constructor   MyClassSwap(const int x = 0) : m_x(x) {}    //Canonical form of copy assignment operator   MyClassSwap& operator=(const MyClassSwap& other)   {     MyClassSwap temp(other);     Swap(temp);      //Return *this by convention     return *this;   }    ///Read the member variable   int GetX() const { return m_x; }    private:   //Member variables   int m_x;    void Swap(MyClassSwap& other)   {     std::swap(m_x,other.m_x);   } };  #include <cassert>  int main() {   {     MyClassClassic x(1);     MyClassClassic y(2);     assert(x.GetX() != y.GetX());     x = y;     assert(x.GetX() == y.GetX());   }   {     MyClassSwap x(1);     MyClassSwap y(2);     assert(x.GetX() != y.GetX());     x = y;     assert(x.GetX() == y.GetX());   } } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
