
 

 

 

 

 

([C++](Cpp.md)) [Array\_intersect](CppArray_intersect.md)
===========================================================

 

![STL](PicStl.png)

 

[Array\_intersect](CppArray_intersect.md) is an [array](CppArray.md)
[example](CppExample.md).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppArray\_intersect/CppArray\_intersect.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppArray\_intersect/main.cpp
------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  ///Modeled after the PHP function array_intersect template <class T> const std::vector<T> array_intersect(   const std::vector<T>& v,   const std::vector<T>& w) {   assert(std::is_sorted(v.begin(),v.end()));   assert(std::is_sorted(w.begin(),w.end()));   std::vector<T> x;   std::set_intersection(v.begin(),v.end(),w.begin(),w.end(),std::back_inserter(x));   return x; }  int main() {    //Integers   const std::vector<int> a { 0,1,2, 3, 4, 5 };    //Squares   const std::vector<int> b { 0,1,4,16,25,36 };    //Zero, one and four are common in both arrays   const std::vector<int> expected { 0,1,4 };    //array_intersect will return the following form   const std::vector<int> result { array_intersect(a,b) };    assert(expected == result);  }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
