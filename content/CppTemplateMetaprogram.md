

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Template metaprogram](CppTemplateMetaprogram.htm)
===================================================================

 

[Template metaprogramming](CppTemplateMetaprogram.htm) is a technique to
perform calculations during [compiling](CppCompile.htm) only.

 

There is no semantic difference between [class](CppClass.htm) and
[typename](CppTypename.htm) in a template-parameter \[1\].

 

Below is an example to calculate the [factorial](CppFactorial.htm) of an
([unsigned](CppUnsigned.htm)) [integer](CppInt.htm) during compile-time.
So when the program starts to run, all factorials are already
calculated.

 

-   [Download the Qt Creator project
    'CppTemplateMetaprogram' (zip)](CppTemplateMetaprogram.zip)

 

Other examples:

 

-   [Compile-time Strategy Design
    Pattern](CppCtStrategyDesignPattern.htm)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppTemplateMetaprogram.pro
-------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <bool> struct CtAssert;  template <> struct CtAssert<true> {};  //The template metaprogram for factorial template <unsigned int N> struct factorial {   static unsigned const value = N * factorial<N-1>::value; };  template <> struct factorial<0> {   static unsigned const value = 1; };  int main() {   CtAssert<(factorial<0>::value==1)>();   CtAssert<(factorial<1>::value==1)>();   CtAssert<(factorial<2>::value==2)>();   CtAssert<(factorial<3>::value==6)>();   CtAssert<(factorial<4>::value==24)>();   CtAssert<(factorial<5>::value==120)>(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
