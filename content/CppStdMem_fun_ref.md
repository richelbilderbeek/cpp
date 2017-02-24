
 

 

 

 

 

([C++](Cpp.md)) ![C++98](PicCpp98.png) [std::mem\_fun\_ref](CppMem_fun_ref.md)
================================================================================

 

[std::mem\_fun\_ref](CppMem_fun_ref.md) is an adapter to be able to use
[algorithms](CppAlgorithm.md) on a [member
function](CppMemberFunction.md) of T stored in a
[container](CppContainer.md) as T (compare
[std::mem\_fun](CppMem_fun.md), to use [algorithms](CppAlgorithm.md)
on a [member function](CppMemberFunction.md) of T stored in a
[container](CppContainer.md) as T\* ).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector>  struct MyClass {   void SayHello() const { std::cout << "Hello" << std::endl; } };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ----------------------
  ` Hello Hello Hello`
  ----------------------

 

 

 

 

 

 

Full example
------------

 

-   ![Qt Creator](PicQtCreator.png) [Download the Qt Creator project
    'CppMem\_fun\_ref' (zip)](CppMem_fun_ref.md)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppMem\_fun\_ref.pro
-------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector>  struct MyClass {   void SayHello() const { std::cout << "Hello" << std::endl; } };  int main() {   std::vector<MyClass> v(3);   std::for_each(v.begin(), v.end(), std::mem_fun_ref(&MyClass::SayHello)); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
