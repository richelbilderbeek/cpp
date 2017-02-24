[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [to link](CppLink.htm)
=======================================

 

[to link](CppLink.htm) is combining all [compilation units](CppUnit.htm)
of a project into a single executable, which is performed by a
[linker](CppLinker.htm).

 

[Linking](CppLink.htm) takes place after [compiling](CppCompile.htm). An
[error](CppError.htm) during linking is called a [link
error](CppLinkError.htm).

 

There are two types of [linkage](CppLink.htm):

-   [internal linkage](CppInternalLinkage.htm): 'a name has [internal
    linkage](CppInternalLinkage.htm) if it is local to its translation
    unit and cannot collide with an identical name defined in another
    unit at [link time](CppLinkTime.htm)' \[1\]
-   [external linkage](CppExternalLinkage.htm): 'A name has [external
    linkage](CppExternalLinkage.htm) if, in a multi-file program, that
    name can interact with other translation units at
    [link-time](CppLinkTime.htm)' \[1\]. Avoid data with [external
    linkage](CppExternalLinkage.htm) at file scope \[2\]

 

 

 

 

 

![Qt Creator](PicQtCreator.png) [Linking](CppLinker.htm) against a library in [Qt Creator](CppQtCreator.htm)
------------------------------------------------------------------------------------------------------------

 

[Linking](CppLink.htm) against a library in [Qt
Creator](CppQtCreator.htm) depends on your operating system:

 

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [Linking against
    a library in Qt Creator under Ubuntu](CppQtCreatorLinkingUbuntu.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png) [Linking
    against a library in Qt Creator under
    Windows](CppQtCreatorLinkingWindows.htm)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) [static linking](CppQtCreatorLinkStatic.htm) in [Qt Creator](CppQtCreator.htm)
--------------------------------------------------------------------------------------------------------------

 

When you want to create a stand-alone application (that is: no DLL's nor
LIB's, just one single executable file), you will need to do [static
linking](CppQtCreatorLinkStatic.htm).

 

 

 

 

 

External links
--------------

 

-   [Wikipedia page about
    linker](http://en.wikipedia.org/wiki/Linker_%28computing%29)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.2
2.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.1

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
