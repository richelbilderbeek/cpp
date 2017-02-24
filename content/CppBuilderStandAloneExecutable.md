
 

 

 

 

 

([C++](Cpp.md)) [Create a stand-alone executable in C++ Builder](CppBuilderStandAloneExecutable.md)
=====================================================================================================

 

One of the [C++ Builder FAQ](CppBuilderFaq.md)'s is how to create a
stand-alone executable in [C++ Builder](CppBuilder.md).

 

It depends on the version of [C++ Builder](CppBuilder.md) you work
with.

 

 

 

 

 

C++ Builder 6.0
---------------

 

Do the following:

-   'Project | Options'
-   In this menu, do '(Tab) Packages | Uncheck 'Build with runtime
    packages''
-   '(Tab) Linker | Uncheck 'Use dynamic RTL''

 

 

 

 

 

C++ Builder 2006
----------------

 

Do the following:

 

-   'Project | Options'
-   In this menu, do 'Linker | Linking', uncheck 'Build with runtime
    packages'
-   'Packages', uncheck 'Use dynamic RTL'

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
