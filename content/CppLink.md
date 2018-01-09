
 

 

 

 

 

([C++](Cpp.md)) [to link](CppLink.md)
=======================================

 

[to link](CppLink.md) is combining all [compilation units](CppUnit.md)
of a project into a single executable, which is performed by a
[linker](CppLinker.md).

 

[Linking](CppLink.md) takes place after [compiling](CppCompiler.md). An
[error](CppError.md) during linking is called a [link
error](CppLinkError.md).

 

There are two types of [linkage](CppLink.md):

-   [internal linkage](CppInternalLinkage.md): 'a name has [internal
    linkage](CppInternalLinkage.md) if it is local to its translation
    unit and cannot collide with an identical name defined in another
    unit at [link time](CppLinkTime.md)' \[1\]
-   [external linkage](CppExternalLinkage.md): 'A name has [external
    linkage](CppExternalLinkage.md) if, in a multi-file program, that
    name can interact with other translation units at
    [link-time](CppLinkTime.md)' \[1\]. Avoid data with [external
    linkage](CppExternalLinkage.md) at file scope \[2\]

 

 

 

 

 

![Qt Creator](PicQtCreator.png) [Linking](CppLinker.md) against a library in [Qt Creator](CppQtCreator.md)
------------------------------------------------------------------------------------------------------------

 

[Linking](CppLink.md) against a library in [Qt
Creator](CppQtCreator.md) depends on your operating system:

 

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [Linking against
    a library in Qt Creator under Ubuntu](CppQtCreatorLinkingUbuntu.md)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png) [Linking
    against a library in Qt Creator under
    Windows](CppQtCreatorLinkingWindows.md)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) [static linking](CppQtCreatorLinkStatic.md) in [Qt Creator](CppQtCreator.md)
--------------------------------------------------------------------------------------------------------------

 

When you want to create a stand-alone application (that is: no DLL's nor
LIB's, just one single executable file), you will need to do [static
linking](CppQtCreatorLinkStatic.md).

 

 

 

 

 

External links
--------------

 

-   [Wikipedia page about
    linker](http://en.wikipedia.org/wiki/Linker_%28computing%29)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.2
2.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.1

 

 

 

 

 

 

