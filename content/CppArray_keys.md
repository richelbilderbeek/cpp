



 

 

 

 

 

([C++](Cpp.md)) [Array\_keys](CppArray_keys.md)
=================================================

 

![STL](PicStl.png)

 

[Array\_keys](CppArray_keys.md) is an [array](CppArray.md)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppArray\_keys/CppArray\_keys.pro
----------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppArray\_keys/main.cpp
-------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <map> #include <vector>  //Modeled after the PHP function with the same name template <class T,class U> const std::vector<T> array_keys(const std::map<T,U>& m) {   std::vector<T> v;   for (const std::pair<T,U>& p: m) { v.push_back(p.first); }   return v; }  //Modeled after the PHP function with the same name #ifdef I_CAN_GET_THIS_TO_WORK_20131004 template <   class T,   class U,   template <typename> class Array = std::vector,   template <typename,typename> class Map = std::map > const Array<T> array_keys(const Map<T,U>& m) {   Array<T> v;   for (const std::pair<T,U>& p: m) { v.push_back(p.first); }   return v; } #endif  int main() {   const std::map<int,std::string> m   {     { 0, "Zero" },     { 1, "One"  },     { 2, "Two"  }   };    const std::vector<int> keys { array_keys(m) };   const std::vector<int> expected { 0,1,2 };   assert(keys == expected ); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
