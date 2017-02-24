
 

 

 

 

 

([C++](Cpp.md)) [Template metaprogram](CppTemplateMetaprogram.md)
===================================================================

 

[Template metaprogramming](CppTemplateMetaprogram.md) is a technique to
perform calculations during [compiling](CppCompile.md) only.

 

There is no semantic difference between [class](CppClass.md) and
[typename](CppTypename.md) in a template-parameter \[1\].

 

Below is an example to calculate the [factorial](CppFactorial.md) of an
([unsigned](CppUnsigned.md)) [integer](CppInt.md) during compile-time.
So when the program starts to run, all factorials are already
calculated.

 

-   [Download the Qt Creator project
    'CppTemplateMetaprogram' (zip)](CppTemplateMetaprogram.zip)

 

Other examples:

 

-   [Compile-time Strategy Design
    Pattern](CppCtStrategyDesignPattern.md)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppTemplateMetaprogram.pro
-------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <bool> struct CtAssert;  template <> struct CtAssert<true> {};  //The template metaprogram for factorial template <unsigned int N> struct factorial {   static unsigned const value = N * factorial<N-1>::value; };  template <> struct factorial<0> {   static unsigned const value = 1; };  int main() {   CtAssert<(factorial<0>::value==1)>();   CtAssert<(factorial<1>::value==1)>();   CtAssert<(factorial<2>::value==2)>();   CtAssert<(factorial<3>::value==6)>();   CtAssert<(factorial<4>::value==24)>();   CtAssert<(factorial<5>::value==120)>(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
