
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [TEMPLATE (qmake variable)](CppQmakeTemplate.md)
===================================================================================

 

[TEMPLATE](CppQmakeTemplate.md) is a [qmake
variable](CppQmakeVariable.md).

 

The value of [TEMPLATE](CppQmakeTemplate.md) determines the kind of
[makefile](CppMakefile.md) that [qmake](CppQmake.md) will produce.
[TEMPLATE](CppQmakeTemplate.md) can have the following values \[1\]:

-   ![ ](PicSpacer.png) app: create a [makefile](CppMakefile.md) for
    applications (default)
-   ![ ](PicSpacer.png) lib: create a [makefile](CppMakefile.md) for
    building a [library](CppLibrary.md)
-   ![ ](PicSpacer.png) subdirs: create a [makefile](CppMakefile.md)
    for building targets in subdirectories. The subdirectories are
    specified with [SUBDIRS](CppQmakeSubdirs.md)
-   ![Windows](PicWindows.png) vcapp: create a
    [makefile](CppMakefile.md) for building a [Visual
    Studio](CppVisualStudio.md) application
-   ![Windows](PicWindows.png) vclib: create a
    [makefile](CppMakefile.md) for building a [Visual
    Studio](CppVisualStudio.md) [library](CppLibrary.md)

 

[References](CppReferences.md)
-------------------------------

 

1.  [Trolltech documentation about
    TEMPLATE](http://docs.huihoo.com/qt/4.2/qmake-variable-reference.html#template)

 

 

 

 

 

 

