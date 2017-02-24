

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![C++98](PicCpp98.png) [std::mem\_fun\_ref](CppMem_fun_ref.htm)
================================================================================

 

[std::mem\_fun\_ref](CppMem_fun_ref.htm) is an adapter to be able to use
[algorithms](CppAlgorithm.htm) on a [member
function](CppMemberFunction.htm) of T stored in a
[container](CppContainer.htm) as T (compare
[std::mem\_fun](CppMem_fun.htm), to use [algorithms](CppAlgorithm.htm)
on a [member function](CppMemberFunction.htm) of T stored in a
[container](CppContainer.htm) as T\* ).

 

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
    'CppMem\_fun\_ref' (zip)](CppMem_fun_ref.htm)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppMem\_fun\_ref.pro
-------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector>  struct MyClass {   void SayHello() const { std::cout << "Hello" << std::endl; } };  int main() {   std::vector<MyClass> v(3);   std::for_each(v.begin(), v.end(), std::mem_fun_ref(&MyClass::SayHello)); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
