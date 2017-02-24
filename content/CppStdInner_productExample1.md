



 

 

 

 

 

([C++](Cpp.md)) [StdInner\_productExample1](CppStdInner_productExample1.md)
=============================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdInner\_productExample1/CppStdInner\_productExample1.pro
--------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppStdInner\_productExample1/main.cpp
---------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <iterator> #include <vector>  int main() {    const std::vector<int> v{1,2,3};   const std::vector<int> w{2,3,4};   //Calculate the sum of the products:   //   // 1*2 + 2*3 + 3*4 = 2 + 6 + 12 = 20   //   const int sip = std::inner_product(     std::begin(v),     std::end(v),     std::begin(w),     0.0,     std::plus<int>(), //Sum the results     std::multiplies<int>() //Multiply the elements from the two vectors   );   assert(sip == 20);    // Because summing the product is so common,   // it is supplied as a default   const int sip_too = std::inner_product(     std::begin(v),     std::end(v),     std::begin(w),     0.0   );   assert(sip_too == sip); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
